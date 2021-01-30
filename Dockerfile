FROM gitpod/workspace-full

RUN brew install gh
RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Dev-x-Team/corgit/main/setup)"
RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/abdfnx/verx/HEAD/install.sh)"
