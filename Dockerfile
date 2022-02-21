FROM alpine

RUN apk --no-cache add mosquitto-clients

ENTRYPOINT [ "mosquitto_pub" ]
