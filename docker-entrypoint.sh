#!/bin/sh
set -e

# 设置控制台端口，优先使用环境变量 PORT，默认为 9000
CONSOLE_PORT="${PORT:-9000}"

# 调用 MinIO 官方镜像的原始入口点，并传递正确的参数
exec /usr/bin/docker-entrypoint.sh server /data --console-address ":$CONSOLE_PORT"
