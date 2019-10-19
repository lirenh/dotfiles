alias mv='mv -i'
alias cp='cp -i'
alias h='history'
alias j='jobs'
alias l='ls -alhF --group-directories-first' #-X sort file extension
alias o='less'
alias sf='xset dpms force off'
alias sc='sudo systemctl'
alias s='cd ~/stash'
# vpntech@s[1234].avpn.us:2224, 3846721 EXPIRED
# alias vpntech='echo "password: 3846721" && ssh -qfTNC -D 1080 -p 2224 vpntech@s2.avpn.us' #-D 7070
# alias mp3tag='mid3iconv -e GBK'
alias coe='ssh lhuang@gateway.coe.neu.edu'
alias dots='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
alias eye='feh -F --zoom fill ~/Pictures/oo.jpg'
alias gcal='zenity --calendar'
alias topdf='libreoffice --headless --invisible --convert-to pdf'
alias py='python3 -i -q'
alias ipy='ipython3 --no-confirm-exit -i' #--no-banner  ipython --pylab OR In [1]:%pylab
alias pipi='pip3 install --user -U'
alias sue='sudo emacs -Q -nw'
alias mountv='sshfs -o IdentityFile=/home/liren/stash/vagrant/.vagrant/machines/control/virtualbox/private_key vagrant@10.0.0.2: /home/liren/stash/vagrant_control'

# aws
source /home/liren/.local/bin/aws_zsh_completer.sh

if [[ -o interactive ]]; then
    # colorful man page
    man() {
        env LESS_TERMCAP_mb=$'\E[01;31m' \
            LESS_TERMCAP_md=$'\E[01;38;5;74m' \
            LESS_TERMCAP_me=$'\E[0m' \
            LESS_TERMCAP_se=$'\E[0m' \
            LESS_TERMCAP_so=$(tput bold; tput setaf 0; tput setab 7) \
            LESS_TERMCAP_ue=$'\E[0m' \
            LESS_TERMCAP_us=$'\E[04;38;5;146m' \
            man "$@"
    }

    #export TERM=xterm-256color
    #setxkbmap -option ctrl:nocaps
    #gamma
    unsetopt nomatch
    fortune -a
    #figlet TeXt
    zstyle ":completion:*:commands" rehash 1
fi

# CS61A
alias oq='python3 ok --local -q'

# CS61B
export CS61B_LIB_DIR="$HOME/stash/src/javalib/*"  #must have "" and a trailing *; not /lib
export CLASSPATH=".:classes:$CS61B_LIB_DIR"
#alias gjdb='java ucb.gjdb.GJDB'
alias cs='python ~/stash/src/javalib/style61b.py *.java'
alias repob='cd ~/courses/cs61b/su16_repo'
alias jg='java gitlet.Main'
alias mjg='cd ~/courses/cs61b/projects/gitlet/target/classes'
# alg4 bin
# export PATH=$HOME/courses/algs4/bin:$PATH

#CS61C
alias repoc='cd ~/courses/cs61c/workspace/'

#CS145(DB)
alias jn='cd ~/courses/cs145_db_su/cs145-notebooks-2016 && jupyter notebook'

#CS70
# alias jn='cd ~/courses/cs70/ && source venv/bin/activate && jupyter notebook fa14-hw'

# load_ssh() {
# eval "$(ssh-agent -s)"
# ssh-add ~/.ssh/id_rsa
# ssh-add ~/.ssh/id_rsa_ice
# }

# load_ssh &> /dev/null
