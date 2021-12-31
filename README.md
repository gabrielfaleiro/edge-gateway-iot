# edge-gateway-iot

## Design decisions
- Server running on a Raspberry Pi 4
- No issues with docker when installed using get-docker.sh (see sh-files/setDocker.sh)
- Explore K3S: https://k3s.io/

## Security Configurations

- docker/docker-compose.yml
  - POSTGRES_PASSWORD: change it manually after initdb configurations
    - ALTER USER user_name WITH PASSWORD 'new_password';
  - CREDENTIAL_SECRET

## Issues
