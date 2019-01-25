FROM ubuntu


#Set the locale
RUN apt-get update
RUN apt-get install locales

ENV LC_ALL C.UTF-8
RUN update-locale 

RUN apt-get install -y --no-install-recommends apt-utils vim net-tools build-essential zsh git curl ca-certificates
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
EXPOSE 80/tcp
EXPOSE 22/tcp
