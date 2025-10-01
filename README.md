Atividade do Hello World em Java com Docker pelo git hub.
Este projeto contém um programa simples em Java rodando dentro de um container Docker.
Sendo o DockerFile e o Docker compose feitos com a assistência do Chat GPT:


Arquivos:
- "Helloworld.java":
public class Helloworld {
    public static void main(String[] args) {
        System.out.println("Hello World");
    }
}

- "Dockerfile":
# Usar imagem base do JDK
FROM openjdk:25

# Criar diretório de trabalho
WORKDIR /app

# Copiar os arquivos para dentro do container
COPY . .

# Compilar o programa
RUN javac Helloworld.java

# Rodar o programa
CMD ["java", "Helloworld"]

- "docker-compose.yml":

version: "3.8"
services:
  hello-world:
    build: .
    container_name: hello-java
    command: java helloworld



Como rodar:
Criar pasta com os arquivos e abrir o terminal dentro da pasta e escrever os comandos.
#Usando Docker direto:
```bash
docker build -t hello-java .
docker run --rm hello-java
