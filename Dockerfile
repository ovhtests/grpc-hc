FROM golang:bullseye

# Move to working directory /app
WORKDIR /app

# Copy the code into the container
COPY . .

RUN cd health_server && \
    go get google.golang.org/grpc && \
    go get google.golang.org/grpc/examples/features/proto/echo && \
    go get google.golang.org/grpc/health && \
    go get google.golang.org/grpc/health/grpc_health_v1

# Command to run the application when starting the container
ENTRYPOINT ["/bin/sh", "-c", "/app/entry_point.sh"]
