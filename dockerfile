FROM eclipse-temurin:21-jdk

# Crear directorio de la app
WORKDIR /app

# Copiar el JAR generado por Maven
COPY target/eureka-server-0.0.1-SNAPSHOT.jar app.jar

# Exponer el puerto
EXPOSE 8761

# Comando de arranque
ENTRYPOINT ["java","-jar","/app/app.jar"]
