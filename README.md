### Some of my Linux configuration
1. alacritty
2. nvim
3. ranger
4. fcitx
5. zsh
6. tmux 
7. p10k
8. fzf 
9. zim 
10. my software list 

cron.sh 自动执行文件拷贝并上传任务
定时任务 crontab -e
`**`代指当前用户

```bash 
0 10 * * 5 cd /home/**/.config/ && zsh ./cron.sh # 每周五十点
```
