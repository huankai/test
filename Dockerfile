FROM docker.io/java:8-jre-alpine

#指定作者
MAINTAINER huangkai huankai@139.com


COPY target/test-0.0.1-SNAPSHOT.jar /app/app.jar

# 指定工作目录
WORKDIR /app

# 只是声明了容器应该打开的端口并没有实际上将它打开
# 需要使用-p或者-P中指定要映射的端口，容器端口才能映射出去
EXPOSE 8080

# 执行命令
ENTRYPOINT ["java","-jar","app.jar"]
