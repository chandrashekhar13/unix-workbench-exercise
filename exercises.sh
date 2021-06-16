##WEEK 1

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

##WEEK 2

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


#3.Download the GitHub repository for this book and find out how many .html files it contains.
find . -name "*.html" 

# Pipes Exercises

#1.Use pipes to figure out how many US states contain the word “New.”
grep "New" states.txt | wc -l

#2.Examine your ~/.bash_history to try to figure out how many unique commands you’ve ever used. (You may need to look up how to use the uniq and sort commands).
sort ~/.bash_history | uniq -d | wc -l

#Week3


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


#User Input Exercise

nano sc1.sh
#!/usr/bin/env bash
echo "Enter a noun an adjective and a verb."
read noun
read adjective
read verb
echo "$noun $verb $adjective"

bash sc1







































