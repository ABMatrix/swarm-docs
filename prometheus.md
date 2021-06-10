# Prometheus

## setup

### download
wget https://github.com/prometheus/prometheus/releases/download/v2.27.1/prometheus-2.27.1.linux-amd64.tar.gz

### unzip

tar  -vxf  prometheus-2.27.1.linux-amd64.tar.gz  -C /usr/local/

### link

ln  -sv  /usr/local/prometheus-2.27.1.linux-amd64/  /usr/local/Prometheus

### change dir

cd /usr/local/Prometheus

### config

prometheus.yml 


### start

nohup ./prometheus > log &

### open explorer

http:://localhost::9090

