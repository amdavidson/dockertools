FROM debian:latest

RUN apt-get update && apt-get install -y zsh git neovim tmux stow && apt-get clean

WORKDIR /root

RUN git clone https://github.com/amdavidson/dotfiles.git /root/.dotfiles && \
    cd /root/.dotfiles && \
    stow -t /root zsh git vim tmux

RUN vim +"PlugInstall --sync" +qa

CMD ["/usr/bin/zsh"]



