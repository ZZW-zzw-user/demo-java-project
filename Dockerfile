# 基础运行镜像
FROM openjdk:17-jdk-slim
# 设置容器内工作目录
WORKDIR /app
# 把maven打包生成的jar复制到容器内
COPY target/*.jar app.jar
# 容器启动命令
ENTRYPOINT ["java","-jar","app.jar"]
