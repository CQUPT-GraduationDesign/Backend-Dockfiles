if [ ! -d "~/opt" ]; then
  mkdir ~/opt
fi
if [ ! -d "~/opt/log" ]; then
  mkdir ~/opt/log
fi
if [ ! -d "~/opt/log/nginx" ]; then
  mkdir ~/opt/log/nginx
fi
if [ ! -d "~/opt/log/php" ]; then
  mkdir ~/opt/log/php
fi
if [ ! -d "~/opt/mysql" ]; then
  mkdir ~/opt/mysql
fi
if [ ! -d "~/opt/mysql/data" ]; then
  mkdir ~/opt/mysql/data
fi
if [ ! -f "~/opt/log//nginx/access.log" ]; then
  touch ~/opt/log/nginx/access.log
fi
if [ ! -f "~/opt/log/nginx/error.log" ]; then
  touch ~/opt/log/nginx/error.log
fi
if [ ! -f "~/opt/log/php/error.log" ]; then
  touch ~/opt/log/php/error.log
fi
if [ ! -f "~/opt/log/php/fpm-error.log" ]; then
  touch ~/opt/log/php/fpm-error.log
fi
if [ ! -f "~/opt/log/php/fpm-access.log" ]; then
  touch ~/opt/log/php/fpm-access.log
fi
