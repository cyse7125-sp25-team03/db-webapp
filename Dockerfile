FROM flyway/flyway:latest

# Set working directory
WORKDIR /flyway

# Copy migrations
COPY ./migrations /flyway/sql/
COPY flyway.conf /flyway/conf/

# Set default Flyway command
ENTRYPOINT ["flyway"]
