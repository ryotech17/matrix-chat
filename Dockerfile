FROM matrixdotorg/synapse:latest
COPY homeserver.yaml /data/homeserver.yaml
EXPOSE 8008
CMD ["python", "-m", "synapse.app.homeserver", "--config-path", "/data/homeserver.yaml"]
