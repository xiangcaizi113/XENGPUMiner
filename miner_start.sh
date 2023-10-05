#!/bin/bash
# 开机启动脚本说明
# ...

# 进入 root 用户的 XENGPUMiner 目录
cd /root/XENGPUMiner

# 启动screen，并命名为1
screen -S 1 -dm

# 运行 miner.py 脚本
screen -S 1 -X stuff 'python3 miner.py --gpu=true\n'

# 使用Ctrl+a+d从screen中退出，保持后台运行
screen -S 1 -X detach

# 新建screen并命名为2
screen -S 2 -dm

# 运行 xengpuminer
screen -S 2 -X stuff './xengpuminer\n'

# 使用Ctrl+a+d从screen中退出，保持后台运行
screen -S 2 -X detach