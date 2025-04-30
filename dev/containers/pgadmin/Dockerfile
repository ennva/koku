FROM dpage/pgadmin4:8.5

# Ensure all writable directories are accessible to any user (UID)
RUN chmod -R g=u /var/lib/pgadmin /var/log/pgadmin /tmp

# Optional: Remove chown/chmod operations from entrypoint if present
# Optional: If using your own base image, ensure it uses UBI or similar non-root-ready base

USER 1001  # Or just omit this and let OpenShift assign a random UID
