#!/bin/bash

i=0
for var in "$@"
do

  let "i += 1"
  ((i = $i )) 

done



function counter(){


    for file in "$1"/* 			
    do 

    	name=$(basename "$file")	
	   
   	if [[ $name == $2 ]]; 		
   	then
		echo "$file"		
   	fi

    	if [[ -d "$file" ]];
   	then 	              
          	counter "$file" "$2" 	
    	fi
   
    done

}


    if [ $i -eq 1 ]
    then

	
		echo "Continue the search"

		counter "" "$1"				
			
	

    fi






