sh_cmd=$1
if [ -z "$sh_cmd" ]; then 
  sh_cmd="sh"
fi
echo "sh_cmd:$sh_cmd"
app_name=$2
if [ -z "$app_name" ]; then 
  app_name=`pwd`
fi
echo "app_name root path:$app_name"

docker run -it --rm \
-v $app_name:/app \
-v ~/npm/:/root/.npm/ \
lqwangxg/vue-cli \
$sh_cmd
