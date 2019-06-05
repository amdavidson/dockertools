FROM fedora:rawhide

RUN dnf install -y zsh git vim tmux stow && dnf clean all

WORKDIR /root

RUN git clone https://github.com/amdavidson/dotfiles.git /root/.dotfiles && \
    cd /root/.dotfiles && \
    stow -t /root zsh git vim tmux

RUN vim +"PlugInstall --sync" +qa

CMD ["/usr/bin/zsh"]



