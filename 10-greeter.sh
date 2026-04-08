#/bin/sh

# function in bash

function weekend_greet 
{
   echo "Enjoy the weekend! ${1}!"
}

function weekday_greet
{
   echo "Hope you are working hard, ${1}!"
}


echo "Please enter your name"
read name

day=$(date | cut -d' ' -f1)  # you can use this form instead of backticks

if [ $day = "Sat" ] || [ $day = "Sun" ]; then
   weekend_greet $name
else
   weekday_greet $name
fi

# exercise: Add a second argument to the function 
# and make it give a greeting based on the new 
# argument.

function weekend_greet2
{
   echo "Enjoy the weekend, ${1}! Hope you get to eat some ${2}!"
}

function weekday_greet2
{
   echo "Hope you are working hard, ${1}! Treat yourself to some ${2} later!"
}

echo "Please enter your favorite food"
read food

day=$(date | cut -d' ' -f1)

if [ $day = "Sat" ] || [ $day = "Sun" ]; then
   weekend_greet2 $name $food
else
   weekday_greet2 $name $food
fi