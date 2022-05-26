s1v="aa"
s2v="b"

for arg in "$@"
do 
	service=`echo $arg | cut -d "=" -f 1`
	version=`echo $arg | cut -d "=" -f 2`
	if [ "$service" == --version_service1 ]; then
		s1v=$version
	fi
	if [ "$service" == --version_service2 ]; then
		s2v=$version
	fi
done

docker run -it "service1:$s1v"
docker run -it "service2:$s2v"