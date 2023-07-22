FROM --platform=linux/amd64 ubuntu:22.04
RUN apt-get update && apt-get -y install \
  gdebi-core \
  git \
  wget

# Install GitHub Desktop for Linux https://github.com/shiftkey/desktop
#RUN wget -qO - https://apt.packages.shiftkey.dev/gpg.key | gpg --dearmor | tee /usr/share/keyrings/shiftkey-packages.gpg > /dev/null \
#  && echo "deb [arch=amd64 signed-by=/usr/share/keyrings/shiftkey-packages.gpg] https://apt.packages.shiftkey.dev/ubuntu/ any main" > /etc/apt/sources.list.d/shiftkey-packages.list \
#  && apt update && apt install github-desktop
ADD https://github.com/shiftkey/desktop/releases/download/release-3.2.5-linux1/GitHubDesktop-linux-3.2.5-linux1.deb .
RUN gdebi -n GitHubDesktop-linux-3.2.5-linux1.deb
