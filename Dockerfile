FROM library/node:6.11.2

RUN apt-get update && \
    apt-get install -y \
        python \
        python-dev \
        python-pip \
        python-setuptools \
        groff \
        less \
    && yum install -y unzip \
    && yum install -y zip \    
    && pip install --upgrade awscli \
    && apt-get clean

CMD ["/bin/bash"]
