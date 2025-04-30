# Base image (based on Debian, supports pgAdmin)
FROM dpage/pgadmin4:8.6

# Set pgAdmin UID/GID used by container (default is 5050)
ENV PGADMIN_UID=5050 \
    PGADMIN_GID=5050 \
    PGADMIN_DEFAULT_EMAIL=admin@example.com \
    PGADMIN_DEFAULT_PASSWORD=changeme

# Prepare OpenShift compatibility
# This ensures group-writable directories for random UID support
RUN for dir in /var/lib/pgadmin /var/log/pgadmin /var/lib/pgadmin/storage; do \
      mkdir -p $dir && \
      chmod -R g=u $dir; \
    done

# Disable entrypoint sudo and chown if present in upstream (optional safety)
USER 5050

EXPOSE 80
