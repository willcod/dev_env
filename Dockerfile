FROM ubuntu:22.04
LABEL Description="C++ build environment"
LABEL Version="0.2"

RUN apt update && apt install -y --no-install-recommends \
    ca-certificates

RUN printf "deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy main restricted universe multiverse \n deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-updates main restricted universe multiverse \n deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-backports main restricted universe multiverse" > /etc/apt/sources.list

RUN apt update && apt install -y --no-install-recommends \
    git \
    curl

RUN bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)" && \
    sed -i 's/OSH_THEME="font"/OSH_THEME="powerbash10k"/g' ~/.bashrc

RUN apt update && apt install -y --no-install-recommends \
    build-essential \
    cmake \
    vim

WORKDIR /root
