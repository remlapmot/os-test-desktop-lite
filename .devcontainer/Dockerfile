FROM --platform=linux/amd64 ubuntu:22.04
RUN apt-get update && apt-get -y install \
  gdebi-core \
  git \
  wget

# Install GitHub Desktop for Linux https://github.com/shiftkey/desktop
ADD https://github.com/shiftkey/desktop/releases/download/release-3.2.5-linux1/GitHubDesktop-linux-3.2.5-linux1.deb .
RUN gdebi -n GitHubDesktop-linux-3.2.5-linux1.deb
