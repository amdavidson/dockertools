FROM fedora:rawhide

RUN dnf install -y zsh git vim tmux stow && dnf clean all

RUN mkdir /tmp/home && \
    useradd amdavidson -s /usr/bin/zsh -m -k /tmp/home && \
    rm -r /tmp/home

USER amdavidson
WORKDIR /home/amdavidson

RUN git clone https://github.com/amdavidson/dotfiles.git /home/amdavidson/.dotfiles && \
    cd /home/amdavidson/.dotfiles && \
    stow -t /home/amdavidson zsh git vim tmux

CMD ["/usr/bin/zsh"]



