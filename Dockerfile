FROM fedora:rawhide

RUN dnf install -y zsh git vim tmux stow && dnf clean all

RUN mkdir /tmp/home && useradd amdavidson -s /usr/bin/zsh -m -k /tmp/home

RUN git clone https://github.com/amdavidson/dotfiles.git /home/amdavidson/.dotfiles && \
    cd /home/amdavidson/.dotfiles && \
    stow -t /home/amdavidson zsh git vim tmux && \
    chown -R amdavidson /home/amdavidson

USER amdavidson

WORKDIR /home/amdavidson

CMD ["/usr/bin/zsh"]



