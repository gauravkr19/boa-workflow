FROM alpine:3.14
ENV KUBECTL_VERSION=1.21.0

# Install kubectl
RUN wget https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl && \
    chmod +x kubectl && \
    mv kubectl /usr/local/bin/

