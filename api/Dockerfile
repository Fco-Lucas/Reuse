# ============================================
# Stage 1: Build da aplicação
# ============================================
FROM maven:3.9-eclipse-temurin-21-alpine AS builder

WORKDIR /build

# Copia pom.xml primeiro para cache de dependências
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Copia código fonte
COPY src ./src

# Build da aplicação (pula testes para produção)
RUN mvn clean package -DskipTests -B

# ============================================
# Stage 2: Runtime (imagem final)
# ============================================
FROM eclipse-temurin:21-jre-alpine

# Instala curl para healthcheck
RUN apk add --no-cache curl

# Cria usuário não-root para segurança
RUN addgroup -g 1001 appgroup && \
    adduser -D -u 1001 -G appgroup appuser

WORKDIR /app

# Cria diretórios necessários
RUN mkdir -p /app/uploads/posts && \
    chown -R appuser:appgroup /app

# Copia o JAR da stage de build
COPY --from=builder /build/target/*.jar app.jar

# Muda para usuário não-root
USER appuser

# Expõe a porta da aplicação
EXPOSE 8181

# Healthcheck
HEALTHCHECK --interval=30s --timeout=10s --start-period=60s --retries=3 \
  CMD curl -f http://localhost:8181/actuator/health || exit 1

# Comando para iniciar a aplicação
CMD ["java", \
     "-XX:+UseContainerSupport", \
     "-XX:MaxRAMPercentage=75.0", \
     "-Djava.security.egd=file:/dev/./urandom", \
     "-jar", \
     "app.jar"]