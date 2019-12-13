alias tf="source /home/dpaiton/tensorflow/bin/activate"
alias mkdir="mkdir -p"
#alias jp="jupyter notebook --port 8892 --NotebookApp.iopub_data_rate_limit=10000000000"
alias jp="jupyter notebook --NotebookApp.iopub_data_rate_limit=10000000000"
#"mount -v | grep "^/" | awk '{print "\nPartition identifier: " $1  "\n Mountpoint: "  $3}'"
alias list-drives="source ~/scripts/list_drives.sh"
alias tmux-setup="source ~/.tmux/setup.sh"
alias list-sudo="getent group sudo | cut -d':' -f4-"
alias ls="ls -F"
alias mkdir='mkdir -p'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias list-aliases="cat ~/.bash_aliases"
alias killstopped="kill `jobs -ps`"

# OSX Aliases
#alias myip='curl ip.appspot.com'
#alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"
#alias myip="ipconfig getifaddr" #en0 for wireless, en1 for eathernet
#trash () { command mv "$@" ~/.Trash ;}
#alias sshc="~/scripts/sshcolour.sh"
#alias redwood1="sshc dpaiton@redwood1.dyn.berkeley.edu"
#alias rw1="redwood1"
#alias redwood2="sshc dpaiton@redwood2.dyn.berkeley.edu"
#alias rw2="redwood2"
#alias redwood3="sshc dpaiton@redwood3.dyn.berkeley.edu"
#alias bdd="sshc -p 3030 dpaiton@bdd7.redwoodx.berkeley.edu"
