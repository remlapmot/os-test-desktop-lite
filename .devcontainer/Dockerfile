FROM ubuntu:22.04
RUN apt-get update && apt-get -y install git

# Install GitHub Desktop for Linux https://github.com/shiftkey/desktop
RUN wget -qO - https://apt.packages.shiftkey.dev/gpg.key | gpg --dearmor | tee /usr/share/keyrings/shiftkey-packages.gpg > /dev/null \
  && echo "deb [arch=amd64 signed-by=/usr/share/keyrings/shiftkey-packages.gpg] https://apt.packages.shiftkey.dev/ubuntu/ any main" > /etc/apt/sources.list.d/shiftkey-packages.list \
  && apt update && apt install github-desktop
