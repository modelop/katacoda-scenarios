echo "Starting FastScore..."
while [ `fastscore schema show gbm_output | wc -l` -eq 3 ]
do
  sleep 1
done

echo "FastScore Started"
