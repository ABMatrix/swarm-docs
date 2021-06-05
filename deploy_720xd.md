# 部署720xd
> 配置 32C， 96G， 512 SATA SSD * 12。

## 物理机设置

先挂载磁盘。
```
sudo mkfs -t ext4 /dev/sdb
sudo mount /dev/sdb /mnt
```

修改mnt目录权限
```
sudo chown -R jyjf:jyjf /mnt
```

下载bee二进制文件
```
wget https://github.com/ABMatrix/bee/releases/download/v0.5.3-i/pack.tar
tar -xvf pack.tar
```

安装相关工具
```
sudo apt install -y jq dstat htop curl
```

## 生成配置文件

执行scripts/deploy.sh脚本的 mock函数，生成不同的配置文件。
**注意每个配置文件中的端口号需不同, 注意存储的目录 `data-dir`**

## 启动节点

执行scripts/deploy.sh脚本的 start函数.

## 充钱

获取所有合约地址。注意你的节点数量。
```
cat log{801..836}.log | grep 'ethereum address' | awk '{print "0x"$NF}' | tr -d \"
```
通过[批量工具](https://cointool.catxs.com/eth/ethOneToMore)给收集到的账户地址打钱。

通过[批量ERC20工具](https://multisender.app/)给收集到的账户地址打钱。

## 添加监控

将设备加入到蓝鲸平台。
TODO
