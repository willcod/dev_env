FROM ubuntu:20.04
RUN apt update && apt install -y --no-install-recommends \
    ca-certificates \
    curl \
    git \
    vim \
    less
RUN bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)" && \
        sed -i 's/OSH_THEME="font"/OSH_THEME="powerbash10k"/g' ~/.bashrc
WORKDIR /root