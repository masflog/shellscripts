#! /bin/ksh

#2345678901234567890234567890123456789023456789012345678902345678901234567890
#       10        20       30        40       50        60       70        80
#============================================================================
#
#   Name:    Backup Menu                      Author:  Mario Sergio Flores
#
#   Purpose:      Provide datacenter operators with a user friendly alternate
#                 method to perform backup duties via a menu interface.   The
#                 premise behind this script is  that there might be the need
#                 for it when working during an outage or uder contingency.
#                              
#   Date:    Aug 1, 2008
#
#============================================================================
#
#   Exec rules:          Contingency situatons
#                        Whenever manual intervention is required
#
#   Use (Syntax):      ./bkMenu.sh
#
#   Example:                           
#
#============================================================================
#
#   Version number:      1.0
#   Notes:               General Backup
#                        Special Backup
#
#============================================================================
#set -x

#=============================== Variables ==================================

BOLD=`tput smso`
REGULAR=`tput rmso`

#=============================== Functions ==================================

show_menu()
{
clear

tput cup 3 32 
echo "** Backup Menu **" 
         
tput cup 7 10
echo "1. Prep tasks"
tput cup 9 10
echo "2. Flashcopy BEFORE"
tput cup 11 10
echo "3. Full Backup"
tput cup 7 50
echo "4. Post tasks"
tput cup 9 50
echo "5. Flashcopy AFTER"
# tput cup 11 50
# echo "6. "
tput cup 15 10
echo "q. Quit" 
tput cup 19 10

echo ${BOLD}'Choice:___'${REGULAR}
tput cup 19 18
read OPC
validate_opt
}

validate_opt()
{
case ${OPC} in
   1)
     tput cup 20 50
     echo "Executing prep tasks"
	 sleep 10 ;;
   2)
     tput cup 20 50
     echo "flashcopy is not enabled yet"
     sleep 10 ;;
   3)
     tput cup 20 50
     echo "Running Tape Backup. This is going to take some time..."
     sleep 10 ;;
   4)
	 tput cup 20 50
     echo "Executing post tasks"
	 sleep 10 ;;
   5)
     tput cup 20 50
     echo "flashcopy is not enabled yet"
	 sleep 10 ;;
   q|Q)
     clear
     exit 0;;
   *)
     tput cup 20 50
     echo "${NEGRITA}Invalid Option${NORMAL}"
     sleep 3 ;;
esac
     show_menu
}

backup()
{
  # 
  # Add some stuff here
  #
  echo "This is a Dummy function for backup execution"
}

val_env()
{
  #
  # Set environment if needed
  #
  echo "This is a Dummy function to validate the environment"
}


main ()
{
  val_env
  show_menu
}


#================================ B o d y ===================================

main
