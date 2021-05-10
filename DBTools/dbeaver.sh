#!/bin/bash
# cloudbeaver web数据库工具
https://github.com/dbeaver/cloudbeaver/wiki/Run-Docker-Container

sudo docker pull dbeaver/cloudbeaver:latest

sudo docker run --name cloudbeaver --rm -ti -p 8080:8978 -v /var/cloudbeaver/workspace:/opt/cloudbeaver/workspace dbeaver/cloudbeaver:latest
