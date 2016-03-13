VOLUMS somedir 直接加一个目录是在主机的 /var/lib/docker/volums 下创建一个目录，然后将这个目录挂载在docker container 中的你指定的 somedir 上，当container 删除时，这个目录的内容是保留的
你也可以是使用 VOLUMS host-dir:container-dir 这种写法，这样就是指定一个host 上的目录，挂载在 container 上的 container-dir 上。
