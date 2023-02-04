echo;echo;echo;echo;echo;echo;
echo -------- building
echo;echo;
sudo docker build -t dimitriaugusto/fullcycle . -f Dockerfile

echo;echo;echo;echo;echo;echo;
echo -------- running local
echo;echo;
sudo docker run -it --rm dimitriaugusto/fullcycle

echo;echo;echo;echo;echo;echo;
echo -------- login in
echo;echo;
sudo docker login;

echo;echo;echo;echo;echo;echo;
echo -------- pushing
echo;echo;
sudo docker push dimitriaugusto/fullcycle;

echo;echo;echo;echo;echo;echo;
echo -------- running from dockerhub
echo;echo;
docker run --pull=always dimitriaugusto/fullcycle
