tmux_init()
{
    tmux new-session -s "suncle" -d -n "local"    # 开启一个会话
    tmux new-window -n "workspace"          # 开启一个窗口
    tmux split-window -h                # 开启一个竖屏
    # tmux split-window -v "top"          # 开启一个横屏,并执行top命令
}

# 判断是否已有开启的tmux会话，没有则开启
if which tmux 2>&1 >/dev/null; then
    test -z "$TMUX" && (tmux attach || tmux_init)
fi
