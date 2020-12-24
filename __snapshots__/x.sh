#!/bin/bash

UNAME=$(uname)
cgitUrl=https://raw.githubusercontent.com/Dev-x-Team/corgit/main/cgit

successInstall() {
    echo -e "corgit was installed successfully 🤩, type cgit -h"
}

if [ -x "$(command -v wget)" ]; then
    if [[ "$UNAME" == Linux || "$UNAME" == "Darwin" ]]; then
        if [ -x "$(command -v sudo)" ]; then
            sudo wget $cgitUrl -O /usr/local/bin/cgit
        else
            wget $cgitUrl -O /usr/local/bin/cgit
        fi

        successInstall

    elif [[ "$UNAME" == CYGWIN* || "$UNAME" == MINGW* ]]; then
        wget $cgitUrl -O /usr/bin/cgit

        successInstall

    else
        echo "😕, Unidentified system..."
        echo "support abdfnx to add corgit to this system"
    fi
else
    echo -e "wget was not found do you want to install wget?\n[Y/n]"
    read -n 1 accept

    if [[ $accept == "" || $accept == "Y" || $accept == "y" ]]; then
        if [[ "$UNAME" == "Linux" || "$UNAME" == "Darwin" ]]; then
            if [ "$UNAME" == Linux ]; then
                echo "do you want to install it by brew or apt?\nby default it's well installed by apt"
                read installer

                if [[ "$installer" == "apt" || "$installer" == "" ]]; then
                    sudo apt install wget
                elif [ "$installer" == "brew" ]; then
                    if [ -x "$(command -v brew)" ]; then
                        brew install wget
                    else
                        echo "there's no brew\ndo you want to install it\n[Y/n]"
                        read -n 1 accept

                        if [[ $accept == "" || $accept == "Y" || $accept == "y" ]]; then
                            /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

                            if [ -x "$(command -v brew)" ]; then
                                brew install wget
                            fi
                        else
                            echo "you should accept to install"
                            exit 0
                        fi
                    fi
                fi
            elif [ "$UNAME" == "Darwin" ]; then
                if [ -x "$(command -v brew)" ]; then
                    brew install wget
                else
                    echo "there's no brew\ndo you want to install it\n[Y/n]"
                    read -n 1 accept

                    if [[ $accept == "" || $accept == "Y" || $accept == "y" ]]; then
                        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

                        if [ -x "$(command -v brew)" ]; then
                            brew install wget
                        fi
                    else
                        echo "you should accept to install"
                        exit 0
                    fi
                fi

                if [ -x "$(command -v wget)" ]; then
                    if [ -x "$(command -v sudo)" ]; then
                        sudo wget $cgitUrl -O /usr/local/bin/cgit
                    else
                        wget $cgitUrl -O /usr/local/bin/cgit
                    fi
                fi
            fi

        elif [[ "$UNAME" == CYGWIN* || "$UNAME" == MINGW* ]]; then
            local steps=(
                "follow this steps to install wget"
                "1. go to this site"
                "https://eternallybored.org/misc/wget/"
                "and select the latest version of wget"
                "it's going to download it"
                "2. Rename the file wget64.exe to wget.exe if necessary, but if the file was installed in wget.exe name that's good"
                "3. move wget.exe to your \"Git\mingw64\bin\""
                " "
                "Note: I have noticed some bugs when using Wget on Git Bash to create WARC files. For more complex use of Wget, consider Cygwin instead."
            )

            printf "%s\n" "${steps[@]}"

            if [ -x "$(command -v wget)" ]; then
                wget $cgitUrl -O /usr/bin/cgit

                successInstall
            else
                echo "wget is not found... do you follow the steps ?"
            fi
        fi
    fi
fi
