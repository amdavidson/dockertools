FROM fedora:latest

RUN dnf install -y zsh git neovim tmux stow python3-pip \
&& pip3 install pynvim \
&& dnf clean all

WORKDIR /root

RUN git clone https://github.com/amdavidson/dotfiles.git /root/.dotfiles \
&& cd /root/.dotfiles \
&& stow -t /root zsh git vim tmux

RUN nvim --headless +"PlugInstall --sync" +qa

CMD ["/usr/bin/zsh"]



