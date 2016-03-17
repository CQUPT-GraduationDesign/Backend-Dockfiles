# Backend-Dockfiles
Dockfiles
Architecture
![ Architecture ](http://7j1zp6.com1.z0.glb.clouddn.com/%E6%9E%B6%E6%9E%84%E5%9B%BE%20-2.png)
##USAGE
###STEP0
install docker-engine (version 1.10 or upper)
install docker-compose (version 1.6 or upper)
###STEP1
`
./init.sh
`
###STEP2
`
docker-compose -f ./docker-compose.yml up
`
##TIPS
- Place your code ~/opt/htdocs
- Log in the ~/opt/log
- Mysql persistence data in the ~/opt/data/mysql
