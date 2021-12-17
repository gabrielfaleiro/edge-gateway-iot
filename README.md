# edge-gateway-iot

## Security Configurations

- docker/docker-compose.yml
  - POSTGRES_PASSWORD: change it manually after initdb configurations
    - ALTER USER user_name WITH PASSWORD 'new_password';
  - CREDENTIAL_SECRET
