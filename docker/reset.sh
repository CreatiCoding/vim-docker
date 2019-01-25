docker ps -a -f status=exited | grep test_name:test_tag | awk '{print $1}' | xargs docker rm
docker rmi test_name:test_tag
