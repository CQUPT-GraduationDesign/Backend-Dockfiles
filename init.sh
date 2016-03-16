if [ ! -d "~/opt" ]; then
  mkdir ~/opt
fi
if [ ! -d "~/opt/nginx" ]; then
  mkdir ~/opt/nginx
fi
if [ ! -d "~/opt/nginx/log" ]; then
  mkdir ~/opt/nginx/log
fi
if [ ! -d "~/opt/mysql" ]; then
  mkdir ~/opt/mysql
fi
if [ ! -d "~/opt/mysql/data" ]; then
  mkdir ~/opt/mysql/data
fi
if [ ! -f "~/opt/nginx/log/access.log" ]; then
  touch ~/opt/nginx/log/access.log
fi
if [ ! -f "~/opt/nginx/log/error.log" ]; then
  touch ~/opt/nginx/log/error.log
fi
