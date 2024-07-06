# 使用官方的Ubuntu基础镜像
FROM ubuntu:latest

# 安装必要的依赖
RUN apt-get update && apt-get install -y \
    g++ \
    make

# 创建工作目录
WORKDIR /usr/src/app

# 复制当前目录内容到工作目录
COPY . .

# 编译C++程序
RUN make

# 运行程序
CMD ["./your_program"]
