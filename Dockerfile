FROM ubuntu
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install aptitude postgresql curl wget libpq-dev emacs telnet netstat-nat net-tools sudo vim ssh
RUN /bin/bash -c "$(wget -qO- https://apt.vapor.sh)"
RUN apt-get -y install swift vapor
RUN cd /home
RUN git clone https://github.com/appStersFR/dowyuBackend
RUN cd dowyuBackend && vapor build && vapor run