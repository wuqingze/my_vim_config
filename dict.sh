# wudao-dict是一个Linux平台查询英语单词的工具，但是存在连接不稳定的问题，
# 导致查询超时的问题经常发生。这个脚本的目的是为了解决查询英语超时问题，
# 解决的方法是杀死后台进程，并重启程序
ps auxw | grep -i wudaoserver.py | grep python3 | awk '{print $2}' | xargs kill -9
cd /home/nong/dict/Wudao-dict/wudao-dict/
. setup.sh

