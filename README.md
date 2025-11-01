# Reuse+

Sistema de doações de alimentos e produtos entre restaurantes e pessoas, promovendo sustentabilidade e redução de desperdício. Desenvolvido para a disciplina de (Programação para dispostivos móveis) na faculdade de Análise e Desenvolvimento de Sistemas

## 📚 Índice
- [Sobre o projeto](#-sobre-o-projeto)
- [Tecnologias utilizadas](#-tecnologias-utilizadas)
- [Instalação com docker (recomendada)](#-instalação-com-docker-recomendada)
- [Instalação manual](#-instalação-manual-sem-docker)
- [Como usar](#-como-usar)
- [Contribuição](#-contribuição)
- [Contato](#-contato)

## 📖 Sobre o Projeto

O **Reuse+** conecta restaurantes que possuem alimentos excedentes a pessoas que precisam de doações.  
O sistema conta com:
- API back-end (Spring Boot 3 + Java 21)
- Aplicativo mobile (Dart + Flutter)

## 🧠 Tecnologias Utilizadas

**Back-end**
- Java 21 + Spring Boot 3
- PostgreSQL 17
- Flyway (migrations)

**Mobile**
- Dart + Flutter
  - riverpod (Controle de estado + Injeção de dependencias)
  - go_router (Roteamento)
  - dio (Requisições)
  - freezed + json_annotation (Modelo de dados)

**DevOps**
- Linux
- Git + GitHub
- Docker & Docker Compose

## 🐳 Instalação com Docker (recomendada)

### Passos

```bash
# Clone o projeto
git clone https://github.com/Fco-Lucas/Reuse.git
cd reuse/docker

# Crie o arquivo .env.prod
cp .env.example .env.prod

# Substitua o valor das variáveis no arquivo .env.prod
nano .env.prod

# Suba os containers
docker compose --env-file .env.prod -f docker-compose.prod.yml up -d

# Verifique se está tudo funcionando

API: rodando na porta 8181
Banco de dados (PostgreSQL): rodando na porta informada no arquivo .env.prod
```

## ⚙️ Instalação manual (sem Docker)

### Pré-requisitos
- [Java 21+](https://adoptium.net/)
- [Maven](https://maven.apache.org/)
- [PostgreSQL 17+](https://www.postgresql.org/)

### Passos

```bash
# Crie um banco postgreSQL 17
CREATE DATABASE reuse;

# Clone o repositório
git clone https://github.com/Fco-Lucas/Reuse.git
cd reuse

# Configure o application.properties do Spring Boot
## Arquivo encontrado em reuse/api/src/main/resources
### O arquivo a ser editado é exclusivamente o application.properties e não application-dev.properties ou application-prod.properties
spring.datasource.url=jdbc:postgresql://localhost:5432/reuse
spring.datasource.username=seu_usuario
spring.datasource.password=sua_senha
spring.jpa.hibernate.ddl-auto=none

# Rode a API
cd api
./mvnw spring-boot:run

# Baixe o APK
```

## 🚀 Como Usar

A API estará disponível na porta 8181  

Crie uma conta e faça login para acessar as funções de doador ou receptor.

## 🤝 Contribuição

Contribuições são bem-vindas!  
Para contribuir:

1. Faça um fork do projeto
2. Crie uma branch (`git checkout -b feature/nova-feature`)
3. Commit suas mudanças (`git commit -m 'Adiciona nova feature'`)
4. Envie um push (`git push origin feature/nova-feature`)
5. Abra um Pull Request

## 📬 Contato

Desenvolvido por [Fco-Lucas](https://github.com/Fco-lucas)  
📧 E-mail: fcolucasmaia@gmail.com
