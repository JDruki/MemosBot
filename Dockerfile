# 基础镜像，使用 Python 3.8
FROM python:3.8

# 将本地文件夹挂载到容器内的 /app 目录
WORKDIR /app
COPY . /app

# 安装项目依赖
RUN python3 -m venv .venv
RUN . .venv/bin/activate
RUN pip install -r requirements.txt
RUN pip install aiohttp
# 暴露 5000 端口
EXPOSE 5000

# 启动应用
CMD [ "python", "./app.py" ]