# edge-gateway-iot

## Design decisions
- Server running on a Raspberry Pi 4
- For [ISS-001] -> docker is not going to be used.
- Try K3S: https://k3s.io/

## Security Configurations

- docker/docker-compose.yml
  - POSTGRES_PASSWORD: change it manually after initdb configurations
    - ALTER USER user_name WITH PASSWORD 'new_password';
  - CREDENTIAL_SECRET

## Issues

- [ISS-001] Docker didn't work well on Raspian. The clocks of the internal containers was not synch with host and canged arbitrary.
  - The testing environment was:

  PRETTY_NAME="Raspbian GNU/Linux 10 (buster)"
  NAME="Raspbian GNU/Linux"
  VERSION_ID="10"
  VERSION="10 (buster)"
  VERSION_CODENAME=buster
  ID=raspbian
  ID_LIKE=debian
  HOME_URL="http://www.raspbian.org/"
  SUPPORT_URL="http://www.raspbian.org/RaspbianForums"
  BUG_REPORT_URL="http://www.raspbian.org/RaspbianBugs"

  Client: Docker Engine - Community
    Version:           20.10.10
    API version:       1.41
    Go version:        go1.16.9
    Git commit:        b485636
    Built:             Mon Oct 25 07:42:19 2021
    OS/Arch:           linux/arm
    Context:           default
    Experimental:      true

  Server: Docker Engine - Community
    Engine:
      Version:          20.10.10
      API version:      1.41 (minimum version 1.12)
      Go version:       go1.16.9
      Git commit:       e2f740d
      Built:            Mon Oct 25 07:40:35 2021
      OS/Arch:          linux/arm
      Experimental:     false
    containerd:
      Version:          1.4.11
      GitCommit:        5b46e404f6b9f661a205e28d59c982d3634148f8
    runc:
      Version:          1.0.2
      GitCommit:        v1.0.2-0-g52b36a2
    docker-init:
      Version:          0.19.0
      GitCommit:        de40ad0
