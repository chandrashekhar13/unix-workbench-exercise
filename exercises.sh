##WeeK 1

# Hello Terminal Exercises

echo "Chandrashekhar Ghosh"
clear

#Navigating the command Line Exercises

#1.Set your working directory to the root directory.
cd /

#2.Set your working directory to your home directory using three different commands.
cd
cd ~
cd ~/

#3.Find a folder on your computer using your file and folder browser, and then set your working directory to that folder using the terminal.

cd ~/Downloads

#4 List all of the files and folders in the directory you navigated to in #3.
ls

#Creation and Inspection Exercises

#1.Create a new directory called workbench in your home directory.

mkdir workbench

#2.Without changing directories create a file called readme.txt inside of workbench.
touch workbench/readme.txt

#3.Append the numbers 1, 2, and 3 to readme.txt so that each number appears on its own line.
echo "1" >> workbench/readme.txt
echo "2" >> workbench/readme.txt
echo "3" >> workbench/readme.txt

#4.Print readme.txt to the command line.
cat workbench/readme.txt

#5. Use output redirection to create a new file in the workbench directory called list.txt which lists the files and folders in your home directory.
ls > workbench/lsit.txt

#6. Find out how many characters are in list.txt without opening the file or printing it to the command line.
wc workbench/list.txt

#Migration and Destruction Exercises

#1.Create a file called message.txt in your home directory and move it into another directory.
touch message.txt
mv message.txt Documents

#2.Copy the message.txt you just moved into your home directory.
cp Documents/message.txt ~/Desktop

#3.Delete both copies of message.txt. Try to do this without using rm.
mv Documents/message.txt ~/.local/share/Trash
mv Desktop/message.txt ~/.local/share/Trash

##WeeK 2

#Self-Help Exercises

#1.Use man to look up the flag for human-readable output from ls.
man ls
/human-readable

#2.Get help with man by typing man man into the console.
man man

#3.Wouldn’t it be nice if there was a calendar command? Use apropos to look for such a command, then use man to read about how that command works.
apropos calendar
man cal

#Get Wild Exercises

#1.Before I organized the photos by year, what command would have listed all of the photos of type .png?
ls *.png

#2.Before I organized the photos by year, what command would have deleted all of my hiking photos?
rm *hiking*

#3.What series of commands would you use in order to put my figures for a data science course and the pictures I took in the lab into their own folders?
mv *datasci* DataScience
mv *lab* Lab

# Search Excerises

#1.Search states.txt and canada.txt for lines that contain the word “New”.
egrep "New" states.txt canada.txt

#2.Make five text files containing the names of states that don’t contain one of each of the five vowels.
grep -v '[a]' states.txt > without_a.txt
grep -v '[e]' states.txt > without_e.txt
grep -v '[i]' states.txt > without_i.txt
grep -v '[o]' states.txt > without_o.txt
grep -v '[u]' states.txt > without_u.txt


#3.Download the GitHub repository for this book and find out how many .html files it contains.
find . -name "*.html" 

# Pipes Exercises

#1.Use pipes to figure out how many US states contain the word “New.”
grep "New" states.txt | wc -l

#2.Examine your ~/.bash_history to try to figure out how many unique commands you’ve ever used. (You may need to look up how to use the uniq and sort commands).

sort ~/.bash_history | uniq -d | wc -l

##Week3


#Math Exercises

#1.Look at the man pages for bc.
man bc

#2.Try doing some math in bc interactively.
echo "2^2" | bc -i

#3.Try writing some equations in a file and then provide that file as an argument to bc.
#math.sh
#2+2
#4/3
#3^2
bc -i math.sh

#Variables Exercises

#1.Write a Bash program where you assign two numbers to different variables, and then the program prints the sum of those variables.
num1=10
num2=20
echo "$num1+$num2" | bc -i

#2.Write another Bash program where you assign two strings to different variables, and then the program prints both of those strings. Write a version where the strings are printed on the same line, and a version where the strings are printed on different lines.
st1="hello"
st2="world"
echo "$st1 $st2"
echo "$st1"
echo "$st2"

#3.Write a Bash program that prints the number of arguments provided to that program multiplied by the first argument provided to the program.
echo "$# * $1" | bc -l

#User Input Exercise

nano sc1.sh
#!/usr/bin/env bash
echo "Enter a noun an adjective and a verb."
read noun
read adjective
read verb
echo "$noun $verb $adjective"

bash sc1

#Logic and If/Else Exercises

#1.Write a Bash script that takes a string as an argument and prints “how proper” if the string starts with a capital letter.
nano proper.sh
#!/usr/bin/env bash
[[ $1 =~ ^[A-Z] ]] && echo how proper

bash proper.sh Hello

#2.Write a Bash script that takes one argument and prints “even” if the first argument is an even number or “odd” if the first argument is an odd number.
nano evenOdd.sh
#!/usr/bin/env bash

[[ $(expr $1 % 2) -eq 0 ]] && echo Even || echo Odd


bash evenOdd.sh 10
bash

#3.Write a Bash script that takes two arguments. If both arguments are numbers, print their sum, otherwise just print both arguments.

re='^[+-]?[0-9]+([.][0-9]+)?$'
if [[ $1 =~ $re && $2 =~ $re ]] ; then
	echo $(expr $1 + $2)
   
else
	echo $1 $2;
	
fi


#4.Write a Bash script that prints “Thank Moses it’s Friday” if today is Friday. (Hint: take a look at the date program).

[[ $(date +%u) -eq 5 ]] && echo "Thank Mosses it's Friday" || echo "Not Friday"

#Arrays Exercises

#1.Write a bash script where you define an array inside of the script, and the first argument for the script indicates the index of the array element that is printed to the console when the script is run.

arr=(earth mars venus)
echo ${arr[$1]}

bash arr1.sh 1

#2.Write a bash script where you define two arrays inside of the script, and the sum of the lengths of the arrays are printed to the console when the script is run.

arr1=(earth mars venus)
arr2=(jupiter saturn neptune)
echo $(expr ${#arr1[*]} + ${#arr2[*]})

bash arr2.sh

#Braces Exercise
#Create 100 text files using brace expansion.
touch {1..100}.txt

#Loops Exercise

#1.Write serval programs with three levels of nesting and include FOR loops, WHILE loops, and IF statements. Before you run your program try to predict what your program is going to print. If the result is different from your prediction try to figure out why.
for i in jimmy tom karim
do
	count=3
 	while [[ $count -gt 0 ]]
 	do
 		if [[ $(expr $count % 2) -eq 0 ]] 
 			then
 			echo $i roll number is $count, whiich is even
 		else
 			echo $i roll number is $count, whiich is odd
 		fi
 	let count=$count-1
 	done
done 	

#2.Enter the yes command into the console, then stop the program from running. Take a look at the man page for yes to learn more about the program.
yes # prints y until Interrupted
man yes

# Functions Exercises

#1.Write a function called plier which multiplies together a sequence of numbers.
function plier {
	st=1
	for i in $@
	do
	let st=$st*$i
	done
	echo $st
	}

#2.Write a function called isiteven that prints 1 if a number is even or 0 a number is not even.
function isiteven {
	[[ $(expr $1 % 2) -eq 0 ]] && echo 1 || echo 0	
}

source isiteven.sh

#3.Write a function called nevens which prints the number of even numbers when provided with a sequence of numbers. Use isiteven when writing this function.
function nevens {
	st=0
	for i in $@
	do
	[[ $(isiteven $i) -eq 1 ]] && let st=$st+1
	done
	echo $st
	}



#4.Write a function called howodd which prints the percentage of odd numbers in a sequence of numbers. Use nevens when writing this function.
function howodd {
	echo $(expr $# - $(nevens $@))/ $# | bc -l
}
#I think there are some issue with this question above is the solution to the problem 
#but given demo shows
#howodd 42 6 7 9 33
## .40
# which shows the percentage of even numbers 

#5.Write a function called fib which prints the number of fibonacci numbers specified.
function fib {
	a=0
	b=1
	c=0
	count=3
	echo $a
	echo $b
	while [[ $count -le $1 ]]
	do  
	let c=$a+$b
	let a=$b
	let b=$c
	echo $c
	let count=$count+1
	done
}

source fib.sh

#Writing Programs Exercises

#1.Make a script executable.
nano welcome.sh
#!/usr/bin/env bash
function welcome {
	echo Welcome to UNIX
	}
chmod u+x welcome.sh

#2.Put that script in a directory that you create and make that directory part of your PATH.
nano ~/.profile


export PATH=~/Documents/Commands:$PATH
source ~/Documents/Commands/addseq2.sh
source ~/.profile

#3.Write a program called range that takes one number as an argument and prints all of the numbers between that number and 0.
if [[ $1 -gt 0 ]]
then
	cnt=$1
	while [[ cnt -ge 0 ]]
	do
	echo $cnt
	let cnt=$cnt-1
	done
else
	cnt=$1
	while [[ cnt -le 0 ]]
	do
	echo $cnt
	let cnt=$cnt+1
	done
fi

#4.Write a program called extremes which prints the maximum and minimum values of a sequence of numbers.
min=0
max=0
for i in $@
do
[[ $i -gt $max ]] && let max=$i
[[ $i -lt $min ]] && let min=$i
done
echo $min $max
