# MQTT Basics with Mosquitto

Start the [Mosquitto broker](https://hub.docker.com/_/eclipse-mosquitto)
```
docker run --rm -it --name mqtt-broker -p 2883:2883 -v $(pwd)/mosquitto.conf:/mosquitto/config/mosquitto.conf:ro eclipse-mosquitto
```

Install `mosquitto-client`
```
sudo apt-add-repository ppa:mosquitto-dev/mosquitto-ppa
sudo apt install -y mosquitto-clients
```

Start a client subscribing to the topic `test/topic`
```
mosquitto_sub -h localhost -p 2883 -t 'test/topic' -v
```

Start another client to publish to the topic `test/topic`
```
mosquitto_pub -h localhost -p 2883 -t 'test/topic' -m 'hello world'
```

You should see the first client printing out the message that was published
```
test/topic hello world
```
