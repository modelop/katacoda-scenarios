git clone https://github.com/YevGitHub/fastscore-over-rest
docker volume create --name=db
# docker-compose -f fastscore-over-rest/docker-compose.yml up -d
chmod ugo+x fastscore-over-rest/install-fastscore-cli.sh
pip install -U pip
pip install urllib3==1.21.1
pip install idna==2.5
fastscore-over-rest/install-fastscore-cli.sh 1.6.1

