for((i = 1; i < 24; i++)); do  
  j=$(($i + 1))
  gmx editconf -f line${i}.gro -o line${j}.gro -rotate 0 0 15 
done

for((i = 2; i < 25; i++)); do
  sed -i -e "1,2d;184d" line${i}.gro
done

for((i = 1; i < 25; i++)); do     
  cat line${i}.gro >> t.gro
done