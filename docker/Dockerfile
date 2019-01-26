FROM ubuntu

ENV DEBIAN_FRONTEND noninteractive

# set install
RUN apt-get update
RUN apt-get install -y --no-install-recommends apt-utils dialog

# set the locale
RUN apt-get install -y --no-install-recommends locales
ENV LC_ALL C.UTF-8
RUN update-locale 

# install etc
RUN apt-get install -y --no-install-recommends vim net-tools build-essential sudo
RUN apt-get install -y --no-install-recommends zsh git curl ca-certificates wget

# set port
EXPOSE 80/tcp
EXPOSE 22/tcp

# install zsh for root
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
RUN echo "cd /root" >> ~/.zshrc

# RUN mv /bin/bash /bin/bash_old
# RUN ln -f /bin/zsh /bin/bash
# RUN usermod -s /bin/zsh root
# install zsh for ubuntu
# RUN useradd -ms /bin/zsh ubuntu && echo "ubuntu:ubuntu" | chpasswd && adduser ubuntu sudo
# USER ubuntu
# WORKDIR /home/ubuntu
# ENV HOME /home/ubuntu
# RUN echo ~

# RUN curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh

# USER root