SimpleAmqpClient（GitHub 上 apt 无包时）

1. 用浏览器下载源码包：
   https://github.com/alanxz/SimpleAmqpClient/archive/refs/heads/master.zip

2. 解压后得到 SimpleAmqpClient-master 文件夹，任选其一即可：
   - 把整个 SimpleAmqpClient-master 放进 third_party/SimpleAmqpClient/ 下（推荐，CMake 已支持），或
   - 把 SimpleAmqpClient-master 里的内容直接挪到 third_party/SimpleAmqpClient/（使该目录下就有 CMakeLists.txt）

3. 依赖需已安装：sudo apt install librabbitmq-dev libboost-system-dev libboost-chrono-dev

4. 回到项目根目录重新 cmake 编译即可。
