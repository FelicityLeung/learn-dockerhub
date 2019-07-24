FROM ubuntu
MAINTAINER felicityzzz
RUN apt-get update && \
apt-get install gcc -y && \
apt-get install g++ -y && \
apt-get install gdb -y 
RUN apt-get install python-software-properties -y
RUN apt-get install software-properties-common -y 
RUN add-apt-repository ppa:jonathonf/python-3.6 -y && \
apt-get update && \
apt-get install python3.6 -y && \
rm /usr/bin/python  && \
ln -s /usr/bin/python3.6 /usr/bin/python && \
rm /usr/bin/python3 && \
ln -s /usr/bin/python3.6 /usr/bin/python3 && \
apt-get install python3-pip -y && \
pip3 install pip -U && \
rm /usr/bin/pip3 && \
ln -s /usr/local/bin/pip3 /usr/bin/pip3 && \
rm /usr/bin/pip && \
ln -s /usr/local/bin/pip3 /usr/bin/pip && \
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple   
