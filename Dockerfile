FROM flyway/flyway:10

# Set working directory
WORKDIR /flyway

# Copy migrations
COPY ./migrations /flyway/sql/
COPY flyway.conf /flyway/conf/

# Set default Flyway command
ENTRYPOINT ["flyway"]
