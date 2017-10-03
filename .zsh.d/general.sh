alias mv='mv -i'
alias cp='cp -i'
alias h='history'
alias j='jobs'
alias l='ls -alhF --group-directories-first' #-X sort file extension
alias o='less'
alias sf='xset dpms force off'
alias sc='sudo systemctl'
alias todos='cd ~/Desktop && ls -1t'
alias s='cd ~/stash'
alias gop='python3 -i ~/stash/lec.py'
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
alias sue='sudo emacs -Q -nw'
alias jshell='/usr/lib/jvm/java-9-openjdk/bin/jshell'

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
    #fortune -a
    zstyle ":completion:*:commands" rehash 1
fi

#export PATH=$HOME/bin:$PATH
#export PATH=$HOME/.local/bin:$PATH

# OracleJDK
#export JAVA_HOME=$HOME/app/jdk
#export PATH=$JAVA_HOME/bin:$PATH

#export C=192.168.56.101 #centos7
#export RAS=192.168.0.10 #raspberrypi
alias sshpi='ssh pi@192.168.0.6'

# OpenJDK
# export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"

# CS61A
alias oq='python3 ok --local -q'

# CS61B
export CS61B_LIB_DIR="$HOME/stash/src/javalib/*"  #must have "" and a trailing *; not /lib
export CLASSPATH=".:classes:$CS61B_LIB_DIR"
#alias gjdb='java ucb.gjdb.GJDB'
alias cs='python ~/stash/src/javalib/style61b.py *.java'
alias repob='cd ~/courses/cs61b/su16_repo'
alias jg='java gitlet.Main'
alias mjg='cd ~/courses/cs61b/idea_projects/gitlet/target/classes'
# alg4 bin
# export PATH=$HOME/courses/algs4/bin:$PATH

#CS61C
alias repoc='cd ~/courses/cs61c/workspace/'

#CS145(DB)
# alias jn='cd ~/courses/cs145_db/cs145-notebooks && jupyter notebook'

#CS70
# alias jn='cd ~/courses/cs70/ && source venv/bin/activate && jupyter notebook fa14-hw'

# alias rdsmysql='mysql -h aaq34on0mmcpq4.ce6c6xtnikqk.us-west-2.rds.amazonaws.com -P 3306 -u root -pXxX' EXPIRED

# export LD_LIBRARY_PATH=$HOME/cv/cudnn/lib64
# export CUDA_HOME=/home/liren/cuda

# case "$TERM" in
# rxvt-unicode-256color)
# TERM=rxvt-unicode;;
# xterm)
# TERM=konsole-256color;;
# esac

# aws
source /home/liren/.local/bin/aws_zsh_completer.sh
#alias sshec2='ssh -i ~/.ssh/husky.pem ec2-user@ec2.neu-csye6225-spring2017-team-4.me'
#alias sshec22='ssh -i ~/.ssh/hlr_ec2.pem ubuntu@52.14.71.242'

# load_ssh() {
# eval "$(ssh-agent -s)"
# ssh-add ~/.ssh/id_rsa
# ssh-add ~/.ssh/id_rsa_ice
# }

# load_ssh &> /dev/null

# ruby
gems=$(ruby -rubygems -e "puts Gem.user_dir")/bin
export PATH="$gems":$PATH
