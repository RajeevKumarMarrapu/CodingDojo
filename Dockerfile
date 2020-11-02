FROM openjdk:8

ARG SPRING_PROFILES=sqlite
ARG CODENJOY_CONTEXT=codenjoy-contest

COPY server/target/codenjoy-contest.war .

RUN mvnw clean package -D allGames -D skipTests

EXPOSE 8080
CMD ["java", "-jar", "./codenjoy-contest.war", "--spring.profiles.active=${SPRING_PROFILES}", "--context=/${CODENJOY_CONTEXT}"]
