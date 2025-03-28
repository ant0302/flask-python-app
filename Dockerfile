# 使用Ubuntu基础镜像
FROM ubuntu:20.04

# 安装Python 3.8和依赖
RUN apt-get update && \
    apt-get install -y python3.8 python3-pip && \
    ln -s /usr/bin/python3.8 /usr/bin/python

# 安装Flask
RUN pip3 install flask

# 设置工作目录
WORKDIR /app
COPY . /app

# 暴露Flask默认端口
EXPOSE 5000

# 启动命令（假设入口文件是app.py）
CMD ["python", "app.py"]
