FROM python:3.10.5-slim

ARG USERNAME=non-root
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# Create the user
RUN groupadd --gid $USER_GID $USERNAME \
 && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
 #
 # Add sudo support.
 && apt-get update \
 && apt-get install -y --no-install-recommends sudo \
 && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
 && chmod 0440 /etc/sudoers.d/$USERNAME \
 && apt-get -y --no-install-recommends install locales \
 && localedef -f UTF-8 -i ja_JP ja_JP.UTF-8 \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
     
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9
ENV TERM xterm

USER $USERNAME