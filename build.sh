cname=vue-build
cid=`docker ps -a | grep $cname | awk '{print $1}'`
echo $cid

if [ -z "$cid" ]; then 
  echo "docker container $cname is not found, start a new container.";
  
  docker run -it --name $cname \
  -w /vuechat \
  -v ~/vuechat:/vuechat \
  lqwangxg/vue-cli \
  npm install -g @vue/cli @vue/cli-service-global \
  npm run build 
  
else 
  echo "docker image $cname is found, start it";
  docker start $cname    
fi
docker logs $cname
