FROM --platform=linux/amd64 ubuntu:22.04
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
  && apt-get -y install \
    gdebi-core \
    git \
    libgtk2.0-dev \
    libncurses5 \
    wget

# Install GitHub Desktop for Linux https://github.com/shiftkey/desktop
ADD https://github.com/shiftkey/desktop/releases/download/release-3.2.5-linux1/GitHubDesktop-linux-3.2.5-linux1.deb .
RUN gdebi -n GitHubDesktop-linux-3.2.5-linux1.deb

# Install R 4.0.5 as a binary from Posit
# Following https://docs.posit.co/resources/install-r/
ADD https://cdn.rstudio.com/r/ubuntu-2204/pkgs/r-4.0.5_1_amd64.deb .
RUN gdebi -n r-4.0.5_1_amd64.deb

# Install RStudio Desktop
ADD https://download1.rstudio.org/electron/jammy/amd64/rstudio-2023.06.1-524-amd64.deb .
RUN gdebi -n rstudio-2023.06.1-524-amd64.deb
RUN ln -s /opt/R/4.0.5/bin/R /usr/local/bin/R
RUN ln -s /opt/R/4.0.5/bin/Rscript /usr/local/bin/Rscript

# Install Stata 17 - libncurses5, libgtk2.0-dev required
RUN mkdir /tmp/statafiles
RUN mkdir /usr/local/stata17
COPY stata-linux/Stata17Linux64.tar.gz /tmp/statafiles
COPY stata-linux/stata.lic /tmp/statafiles
COPY scripts/install-stata.sh .
# In the devcontainer run the install-stata.sh script
