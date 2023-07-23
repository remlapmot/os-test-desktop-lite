FROM --platform=linux/amd64 ubuntu:22.04
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y install \
  gdebi-core \
  git \
  wget

# Install GitHub Desktop for Linux https://github.com/shiftkey/desktop
ADD https://github.com/shiftkey/desktop/releases/download/release-3.2.5-linux1/GitHubDesktop-linux-3.2.5-linux1.deb .
RUN gdebi -n GitHubDesktop-linux-3.2.5-linux1.deb

# Install R
COPY scripts/install-r.sh .
RUN bash install-r.sh

# Install RStudio Desktop
ADD https://download1.rstudio.org/electron/jammy/amd64/rstudio-2023.06.1-524-amd64.deb .
RUN gdebi -n rstudio-2023.06.1-524-amd64.deb

# Install Stata 17
RUN mkdir /tmp/statafiles
COPY stata-linux/Stata17Linux64.tar.gz /tmp/statafiles
COPY scripts/install-stata.sh .
# RUN bash install-stata.sh
