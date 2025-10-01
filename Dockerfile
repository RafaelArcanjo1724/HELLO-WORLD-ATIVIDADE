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
