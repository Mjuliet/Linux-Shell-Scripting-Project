#!/bin/bash

echo

echo "Math made easy! Our mini calculator is at your service"


echo
# Main loop to contineously prompt user for input
while true
do


# Prompt user to enter a number
    read -p "Enter a number: " user_number
    echo



# Prompt user to choose between full and partial multiplication table

    read -p "Do you want a full multiplication table (1-10) or a partial table? Enter 'f' for full table or 'p' for partial table: " table_type
    echo


      # Check if user choose full multiplication table

    if [ "$table_type" = "f" ]; then


      # Prompt user to choose between ascending and descending order

        read -p "Do you want your table in ascending or descending order? Enter 'a' for ascending order or 'd' for descending order: " order_type
	echo

	  # Generate full multiplication table in ascending order

        if [ "$order_type" = "a" ]; then

            echo "Multiplication Table for $user_number in ascending order (1-10) using for loop:"
            for i in {1..10}; do
                product=$((user_number * i))
                echo "$user_number x $i = $product"
            done
            echo


          # Generate full multiplication table in descending order


	     echo "Multiplication Table for $user_number in ascending order (1-10) using C-style for loop:"
            for ((i=1; i<=10; i++)); do
                product=$((user_number * i))
                echo "$user_number x $i = $product"
            done
            echo

        elif [ "$order_type" = "d" ]; then

# Full table in descending order using the list list form

            echo "Multiplication Table for $user_number in descending order (10-1) using for loop:"
            for i in {10..1}; do
                product=$((user_number * i))
                echo "$user_number x $i = $product"
            done

	   echo

# Full table in descending order using C-style for loop

            echo "Multiplication Table for $user_number in descending order (10-1) using C-style for loop:"
            for ((i=10; i>=1; i--)); do
                product=$((user_number * i))
                echo "$user_number x $i = $product"
            done
            echo
        fi


       # Check if user chose partial multiplication table

	  elif [ "$table_type" = "p" ]; then


         # Prompt user to enter start and end numbers for partial table
 
        read -p "Enter the starting number for the partial table (1-10): " start
	echo
        read -p "Enter the ending number for the partial table (1-10): " end


          # Validate user input for start and end numbers


        if [ $start -lt 1 ] || [ $start -gt 10 ] || [ $end -lt 1 ] || [ $end -gt 10 ] || [ $start -gt $end ]; then
            echo
            echo "You entered an invalid input range. Generating full multiplication table instead."
            echo "Multiplication Table for $user_number (1-10):"
            for i in {1..10}; do
                product=$((user_number * i))
                echo "$user_number x $i = $product"
            done
        else


	  # Prompt user to choose between ascending and descending order for partial table
            read -p "Do you want your table in ascending or descending order? Enter 'a' for ascending order or 'd' for descending order: " order_type


          # Generate partial multiplication table in ascending order

            if [ "$order_type" = "a" ]; then
                echo "Multiplication Table for $user_number ($start-$end) using for loop:"
                for ((i=start; i<=end; i++)); do
                    product=$((user_number * i))
                    echo "$user_number x $i = $product"

		      done
                echo

                echo "Multiplication Table for $user_number ($start-$end) using C-style for loop:"
                for ((i=start; i<=end; i++)); do
                    product=$((user_number * i))
                    echo "$user_number x $i = $product"
                done
                echo


           # Generate partial multiplication table in descending order


            elif [ "$order_type" = "d" ]; then
                echo "Multiplication Table for $user_number ($start-$end) using for loop:"
                for ((i=end; i>=start; i--)); do
                    product=$((user_number * i))
                    echo "$user_number x $i = $product"
                done
                echo

		echo "Multiplication Table for $user_number ($start-$end) using C-style for loop:"
                for ((i=end; i>=start; i--)); do
                    product=$((user_number * i))
                    echo "$user_number x $i = $product"
                done
                echo
            fi
        fi
    fi





# Asking the user if they want to generate another multiplication table.

    read -p "Do you want to generate another multiplication table? (y/n): " response

    if [ "$response" != "y" ]; then
        break
    fi
done





