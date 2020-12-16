#
                      #_        _     
  #___ _ __ ___  _ __ | |_ __ _| |__  
 #/ __| '__/ _ \| '_ \| __/ _` | '_ \ 
#| (__| | | (_) | | | | || (_| | |_) |
 #\___|_|  \___/|_| |_|\__\__,_|_.__/ 
                                     
 # !usr/bin/zsh 
 
cp /home/caoayu/.zshrc ./ 
cp /home/caoayu/.zimrc ./ 
cp /home/caoayu/.config/alacritty ./ -r 
cp /home/caoayu/.config/ranger ./ -r 
cp /home/caoayu/.config/zsh/fzf.zsh ./zsh/ 
cp /home/caoayu/.config/nvim/init.vim ./nvim/ 
cp /home/caoayu/.tmux.conf ./ 
cp /home/caoayu/.p10k.zsh ./
apt-mark showmanual >> ./software.txt 


git add .
git status
git commit -m "`date '+%Y%m%d-%H:%M:%S'`"
git push 
