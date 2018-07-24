#/bin/bash
# 2018 Ronald Baker

# This section of code will start the screen
# sessions to begin debugging project

PS3='Enter Web VR configuration choice: '

options=("Baxter" "Movo" "Both" "Quit")


select opt in "${options[@]}"
do
    case $opt in
        "Baxter")
            echo "You chose the Baxter Configuration"
	    # This shall only launch the Baxter configuration
	    screen -c  ../web_vr.screenrc
            ;;
        "Movo")
            echo "you chose the Movo Configuration"
	    # This shall only launch the MOVO configuration

            ;;
        "Both")
            echo "you chose choice $REPLY which is $opt"
	    # This shall launch the configuration for both robots
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done


