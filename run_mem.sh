runtime="2 minute"
endtime=$(date -ud "$runtime" +%s)

while [[ $(date -u +%s) -le $endtime ]]
do
    nvidia-smi | grep "P0" | ts >> result.log;
done
