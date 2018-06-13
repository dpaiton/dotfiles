alias tf="source /home/dpaiton/tensorflow/bin/activate"
alias mkdir="mkdir -p"
#alias jp="jupyter notebook --port 8892 --NotebookApp.iopub_data_rate_limit=10000000000"
alias jp="nohup jupyter notebook --NotebookApp.iopub_data_rate_limit=10000000000"
alias jp2="jupyter notebook --NotebookApp.iopub_data_rate_limit=10000000000"
#"mount -v | grep "^/" | awk '{print "\nPartition identifier: " $1  "\n Mountpoint: "  $3}'"
alias list-drives=/home/dpaiton/list_drives.sh
alias tmux-setup="source /home/dpaiton/.tmux/setup.sh"

