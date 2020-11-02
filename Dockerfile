FROM maven:3.6.3-jdk-8

ARG SPRING_PROFILES=sqlite
ARG CODENJOY_CONTEXT=codenjoy-contest

COPY server/target/codenjoy-contest.war .

RUN mvn clean package -D allGames -D skipTests

EXPOSE 8080
CMD ["java", "-jar", "./codenjoy-contest.war", "--spring.profiles.active=${SPRING_PROFILES}", "--context=/${CODENJOY_CONTEXT}"]
