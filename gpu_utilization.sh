for i in *_batch;
do
	filename='dlprof_summary.csv'
	let n=1;
	while read line; do
		if (( ${n} == 15 ))
		then
			my_str=$line;
			echo "${i}:${my_str}";
		fi
		let n=${n}+1;
	done < ./${i}/$filename
done
