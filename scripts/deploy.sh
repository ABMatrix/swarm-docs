#!/bin/bash

# 36个节点, 按需修改
NODE=36

mock() {
  for i in {801..8$NODE}                                                                                                                                                                
  do                                                                                                                                                                                     
    echo into$i                                                                                                                                                                          
    cp configt.yaml config$i.yaml                                                                                                                                                        
    sed -i 's/:800/:'$i'/g' config$i.yaml                                                                                                                                                
    sed -i 's/dbee/dbee'$i'/g' config$i.yaml                                                                                                                                             
  done  
} 

start() {
    for i in $(seq 801 8$NODE)
    do
        nohup ./bee start --config config$i.yaml > log$i.log 2>&1 &
    done
}