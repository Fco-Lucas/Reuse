# Reuse+

Sistema de doações de alimentos e produtos entre restaurantes e pessoas, promovendo sustentabilidade e redução de desperdício. Desenvolvido para a disciplina de (Programação para dispostivos móveis) na faculdade de Análise e Desenvolvimento de Sistemas

## 📚 Índice
- [Sobre o projeto](#-sobre-o-projeto)
- [Tecnologias utilizadas](#-tecnologias-utilizadas)
- [Instalação](#-instalação)
- [Como usar](#-como-usar)
- [Estrutura do projeto](#-estrutura-do-projeto)
- [Contribuição](#-contribuição)
- [Licença](#-licença)

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

## ⚙️ Instalação

### Pré-requisitos
- [Java 21+](https://adoptium.net/)
- [Docker](https://www.docker.com/)
- [PostgreSQL 17+](https://www.postgresql.org/)

### Passos

```bash
# Clone o repositório
git clone https://github.com/lucasmaia/reuseplus.git

# Acesse o back-end
cd back-end

# Suba o banco via Docker
docker compose up -d

# Rode o back-end
./mvnw spring-boot:run

# Baixe o APK
```

## 🚀 Como Usar

Acesse o front-end em: http://localhost:4200  
A API estará disponível em: http://localhost:8080/api  

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