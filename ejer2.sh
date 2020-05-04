read -p "Dime el nombre de  la ciudad" ciudad

Hombres=[]
Mujeres=[]
numH=0
numM=0
for line in $cat instructores.txt| awk '{print $3}');

do

    gen=$(cat instructores.txt | awk '{print $5}')
    if[$line==$ciudad]
      then 
     if [$5=="Hombre"];
     then     numH=$((numH+1))
     else     numM=$((numM+1))
     fi
    fi
    echo "Hay $numH Hombres y $numM Mujeres"
	      
