ssh root@host01 "echo [[HOST_IP]] host01 >> /etc/hosts"  
ssh root@host01 "git clone https://github.com/rehganavon/fastscore-intro"  
ssh root@host01 "docker volume create --name=db"  
ssh root@host01 "cd fastscore-intro/ && chmod ugo+x ./run.sh && chmod ugo+x ./kafkaesq && ./run.sh" 
