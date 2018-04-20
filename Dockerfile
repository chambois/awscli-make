FROM alpine:3.6

RUN apk --update add \
    python \
    py-pip \
    curl \
    jq \
    ca-certificates \
    make \
    && pip install awscli==1.14.70 \
    && apk del py-pip \
    && rm -rf /var/cache/apk/*