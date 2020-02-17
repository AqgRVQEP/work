apollo 需手动导入数据库，并修改好数据库中对应环境相关字段
修改好.env，设置好mysql 的 ip、port、user、password 

nginx 复制好配置文件以及前段页面到 nginx docker-compose 目录中

mongodb 在 .env 配置好 root 账号密码
修改 docker-entrypoint-initdb.sh 初始化信息
