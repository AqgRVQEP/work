apollo 需手动导入数据库，并修改好数据库中对应环境相关字段
修改好 .env，设置好mysql 的 ip、port、user、password 

nginx 复制好配置文件以及前段页面到 nginx docker-compose 目录中

redis 需提前修改好 server 和 sentinel 配置文件,配置好 ip 地址以及密码