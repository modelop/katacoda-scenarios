echo "Starting FastScore..."
fastscore connect https://localhost:443
while [ `fastscore schema show gbm_output | wc -l` -lt 3 ]
do
  sleep 1
done

echo "FastScore Started."
