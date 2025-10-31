# Use the official n8n Docker image
FROM n8nio/n8n:latest

# Set timezone (optional)
ENV GENERIC_TIMEZONE=Asia/Kolkata

# Expose n8n port
EXPOSE 5678

# Ensure correct permissions for mounted volume
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

# Run as non-root user (matches n8n default)
USER node

# Do NOT override entrypoint or CMD — n8n’s image already handles that
