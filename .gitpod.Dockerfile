FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/
RUN brew install gh
RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Dev-x-Team/corgit/main/setup)"
