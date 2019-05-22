# Docker Tools 

A very simple docker container that installs a few programs and downloads my personal `.dotfiles` to allow me to run a container with a familiar environment on a foreign or temporary system.

## Running Docker Tools

To enter the environment run:

    docker run --rm -it amdavidson/dockertools:latest

If you are looking to edit files from another container it might be useful to add `--volumes-from other_container` to the run command
