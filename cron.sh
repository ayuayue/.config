#
                      #_        _     
  #___ _ __ ___  _ __ | |_ __ _| |__  
 #/ __| '__/ _ \| '_ \| __/ _` | '_ \ 
#| (__| | | (_) | | | | || (_| | |_) |
 #\___|_|  \___/|_| |_|\__\__,_|_.__/ 
                                     
 # !usr/bin/zsh 
 
cp /home/caoayu/.zshrc /home/caoayu/Desktop/code/.config/ 
cp /home/caoayu/.zimrc /home/caoayu/Desktop/code/.config/ 
cp /home/caoayu/.config/alacritty /home/caoayu/Desktop/code/.config/ -r 
cp /home/caoayu/.config/ranger /home/caoayu/Desktop/code/.config/ -r 
cp /home/caoayu/.config/zsh/fzf.zsh /home/caoayu/Desktop/code/.config//zsh/ 
cp /home/caoayu/.config/nvim/init.vim /home/caoayu/Desktop/code/.config/nvim/ 
cp /home/caoayu/.tmux.conf /home/caoayu/Desktop/code/.config/
cp /home/caoayu/.p10k.zsh /home/caoayu/Desktop/code/.config/
apt-mark showmanual >> /home/caoayu/Desktop/code/.config/software.txt 


git add .
git status
git commit -m "`date '+%Y%m%d-%H:%M:%S'`"
git push 
