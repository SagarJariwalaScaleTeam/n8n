# Use official n8n image
FROM n8nio/n8n:latest

# Set environment variables
ENV DB_TYPE=postgresdb \
    DB_POSTGRESDB_HOST=ep-round-frog-ad26lgv1-pooler.c-2.us-east-1.aws.neon.tech \
    DB_POSTGRESDB_PORT=5432 \
    DB_POSTGRESDB_DATABASE=neondb \
    DB_POSTGRESDB_USER=neondb_owner \
    DB_POSTGRESDB_PASSWORD=npg_cmEhWQl6UVo7 \
    DB_POSTGRESDB_SSL_REJECT_UNAUTHORIZED=false \
    DB_POSTGRESDB_SSL_MODE=require \
    N8N_BASIC_AUTH_ACTIVE=true \
    N8N_BASIC_AUTH_USER=admin \
    N8N_BASIC_AUTH_PASSWORD=admin123 \
    N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true \
    N8N_HOST=0.0.0.0 \
    N8N_PORT=5678 \
    WEBHOOK_URL=https://n8n.onrender.com \
    GENERIC_TIMEZONE=Asia/Kolkata

# Expose the n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
