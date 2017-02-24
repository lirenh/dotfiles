# dpkg -l list the package / dpkg -L list installed files
#alias au="tmux new-session -s update 'sudo apt-get update && sudo apt-get dist-upgrade'"
alias aptu='sudo apt-get update && sudo apt-get dist-upgrade'
alias apti='sudo apt-get install'
alias apts='aptitude search'
alias apta='sudo apt-get autoremove'
alias aptp='sudo apt-get purge'
alias apto='apt-cache show'
alias aptl='apt-get changelog'

# JAYATANA
# unset JAVA_TOOL_OPTIONS, unset CLASSPATH

#if [[ $DESKTOP_SESSION=~"^i3.*$" ]]; then
#if [ $DESKTOP_SESSION=i3 ]; then
#    export DESKTOP_SESSION=gnome
#    export XDG_CURRENT_DESKTOP=gnome
#    export DESKTOP_SESSION="kde"
#    XDG_SESSION_DESKTOP=gnome
    #export XDG_CURRENT_DESKTOP="KDE"
#fi
