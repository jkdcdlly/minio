FROM minio/minio:latest

# 将自定义入口点脚本复制到镜像中
COPY docker-entrypoint.sh /docker-entrypoint.sh

# 赋予脚本执行权限
RUN chmod +x /docker-entrypoint.sh

# 指定自定义脚本为容器的入口点
ENTRYPOINT ["/docker-entrypoint.sh"]

# CMD 可以为空，因为启动命令已在入口点脚本中定义
# 或者保留一个默认的 CMD 作为后备（可选）
# CMD ["server", "/data", "--console-address", ":9000"]

# ARG TARGETARCH
# ARG RELEASE

# RUN chmod -R 777 /usr/bin

# COPY ./minio-${TARGETARCH}.${RELEASE} /usr/bin/minio
# COPY ./minio-${TARGETARCH}.${RELEASE}.minisig /usr/bin/minio.minisig
# COPY ./minio-${TARGETARCH}.${RELEASE}.sha256sum /usr/bin/minio.sha256sum

# COPY dockerscripts/docker-entrypoint.sh /usr/bin/docker-entrypoint.sh

# ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]

# VOLUME ["/data"]

# CMD ["minio"]
