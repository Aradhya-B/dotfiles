alias vim="nvim"
alias vi="nvim"
alias myserver="ssh eddy@159.65.216.50"
alias dotfiles='/usr/bin/git --git-dir=/home/eddy/.dotfiles/ --work-tree=/home/eddy'
alias python='python3'
alias pip='pip3'
alias ipython='python -m IPython'
alias cdrive="cd /mnt/c/Users/aradh/"
alias hwserver="ssh hello@159.203.13.59"
alias hwliveserver="sshpass -p 'pAssw0rd' ssh root@159.89.121.253"
alias ec2server="ssh -i ~/.ssh/aws-ec2.pem ubuntu@ec2-18-220-235-138.us-east-2.compute.amazonaws.com"
alias hwlive="cd ~/work/hackwestern/hackWestern2020-live/"
alias t="tmux"
alias ta="t a -t"
alias tls="t ls"
alias tn="t new -t"

start() {
  explorer.exe "$1"
}
