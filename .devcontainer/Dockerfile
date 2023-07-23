FROM --platform=linux/amd64 ubuntu:22.04
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y install \
  gdebi-core \
  git \
  libgtk2.0-dev \
  libncurses5 \
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

# Install Stata 17 - libncurses5, libgtk2.0-dev required
RUN mkdir /tmp/statafiles
RUN mkdir /usr/local/stata17
COPY stata-linux/Stata17Linux64.tar.gz /tmp/statafiles
COPY stata-linux/stata.lic /usr/local/stata17
COPY scripts/install-stata.sh .
# RUN bash install-stata.sh
