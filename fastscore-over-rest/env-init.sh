ssh root@host01 "git clone https://github.com/YevGitHub/fastscore-over-rest"
ssh root@host01 "docker volume create --name=db"
# docker-compose -f fastscore-over-rest/docker-compose.yml up -d
ssh root@host01 "chmod ugo+x fastscore-over-rest/install-fastscore-cli.sh"
ssh root@host01 "pip install -U pip"
ssh root@host01 "pip install urllib3==1.21.1"
ssh root@host01 "pip install idna==2.5"
ssh root@host01 "fastscore-over-rest/install-fastscore-cli.sh 1.6.1"

