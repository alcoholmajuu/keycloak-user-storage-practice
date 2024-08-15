FROM keycloak/keycloak:latest
COPY target/user-storage-properties.jar /opt/keycloak/providers/user-storage-properties.jar
RUN /opt/keycloak/bin/kc.sh build
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]