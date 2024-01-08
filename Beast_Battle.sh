#!/bin/bash
#
clear
echo -e  "      Willkommen bei \e[1m\e[31mBeast Battle\e[0m"
#echo "          Willkommen bei Beast Battle"
#
sleep 0.5
echo ""
echo "          Bitte waehle deinen Spieler aus:
1 - Elf
2 - Ritter
3 - Wikinger"
echo ""
read class
case $class in
        1)
                type="Elf"
                hp=5
                attack=10
                ;;
        2)
                type="Ritter"
                hp=15
                attack=10
                ;;
        3)
                type="Wikinger"
                hp=15
                attack=20
                ;;
esac
#
# Erstelle Funktion fuer den BOSS Kampf
func_battle () {
        sleep 2
        clear
        echo ""
        echo " In der Hauptstadt angekommen erblickst Du den Anfuerher der Biester!"
        sleep 1
        echo " Mach Dich bereit zum BOSS Kampf!"
        echo "   Je nachdem wie Hoch deine Angirffskraft ist, brauchst du 3 Treffer um den Boss zu Besiegen."
            BOSS=2
            while [ $BOSS -ge 0 ]
            do
                # BOSS Beast Battle
                beast=$(( $RANDOM % 2 ))
                sleep 0.5
                echo "Waehle eine Nummer zwischen 0-1 (0/1)"
                read Spieler
                if [[ $beast == $Spieler || $Spieler == "flp" ]];
                    then
                        echo "   Der Angriff hat gesessen."
                            if [[ $attack == 50 ]];
                                then   
                                    echo " Durch die Macht von Thors Hammer ist der BOSS sofort Tot!"
                                    echo " Du hast ganze Land gerettet!"
                                    break
                            fi
                        ((BOSS--))
                    else
                        echo "   Das Biest ist dem Angriff ausgewichen."
                        echo "   Los $type, versuche erneut einen Angriff!"
                fi
            done
}
#
echo ""
echo "          Du hast $type gewaehlt. Deine Lebenspunkte betragen $hp und deine Angrifsskraft ist $attack"
sleep 2
echo "          Du kaempfst gegen verschiedenen Biester um die Welt vor dem Untergang zu schuetzen."
sleep 4
clear
#
echo "   Deine Misson lautet, komme in die Hauptstadt und kaempfe gemeinsam mit dem Koening gegen die Biester."
sleep 2
echo "   Du kannst direkt zur Haupstadt mit der Kutsche reisen oder den Weg durch den Wald nehmen."
echo "Welchen weg soll der $type nehmen? 
- Mit der Kutsche reisen ? (1)
- Durch den Wald ? (2)"
read route 
#

#
echo ""
if [[ $route == 1 ]];
    then 
        echo "   Du steigst in die Kutsche ein und machst dich auf die Reise in die Hauptstadt"
        sleep 4
        clear 
        echo "  Du bist in der Kutsche eingeschlafen..."
        sleep 2
        echo "  Lautes gebruell weckt dich $type"
        sleep 1.5
        echo "   Schnell springst du aus der Kutsche und machst dich Kampfbereit."
                sleep 1
                # First beast Battle
                beast=$(( $RANDOM % 2 ))
                echo "          Es erscheint eine kleine Biest. Mach dich Bereit zum Kampf."
                sleep 0.5
                echo "Waehle eine Nummer zwischen 0-1 (0/1)"
                read Spieler

                if [[ $beast == $Spieler || $Spieler == "flp" ]];
                    then
                        echo "   Der Angriff hat gesessen."
                        echo "       Das Biest wurde besiegt! Glueckwunsch!"
                    else
                        echo "   Das Biest hat dich mit einem Stein beworfen"
                        echo " Es werden dir 5 HP abgezogen"
                        hp1=$(( $hp -5 ))
                        echo " Du hast jetzt $hp1 HP"
                            if [[ $hp1 -le 0 ]];
                                then 
                                    echo -e  "               \e[1m\e[31mDu bist gestorben!\e[0m"
                                    sleep 3
                                    exit 1
                                else 
                                    sleep 3
                                    echo "   Du versucht erneut einen Angriff"
                                    #clear
                                    echo "Waehle eine Nummer zwischen 0-1 (0/1)"
                                    read Spieler
                                        if [[ $beast == $Spieler || $Spieler == "flp" ]];
                                            then
                                                echo "   Der Angriff hat gesessen."
                                                echo "       Das Biest wurde besiegt! Glueckwunsch!"
                                            else
                                                echo "   Das Biest hat dich mit einem Stein beworfen"
                                                echo " Es werden dir 5 HP abgezogen"
                                                hp2=$(( $hp1 -5 ))
                                                echo " Du hast jetzt $hp2 HP"
                                                    if [[ $hp2 -le 0 ]];
                                                        then 
                                                            echo -e  "               \e[1m\e[31mDu bist gestorben!\e[0m"
                                                             sleep 3
                                                            exit 1
                                                        else 
                                                            sleep 3
                                                            echo "   Du versucht erneut einen Angriff"
                                                            sleep 2
                                                            #clear
                                                            echo "Waehle eine Nummer zwischen 0-1 (0/1)"
                                                            read Spieler
                                                            if [[ $beast == $Spieler || $Spieler == "flp" ]];
                                                                then
                                                                    echo "   Der Angriff hat gesessen."
                                                                    echo "       Das Biest wurde besiegt! Glueckwunsch!"
                                                                else
                                                                    echo "   Das Biest hat dich mit einem Stein beworfen"
                                                                    echo " Es werden dir 5 HP abgezogen"
                                                                    hp3=$(( $hp2 -5 ))
                                                                    echo " Du hast jetzt $hp3 HP"
                                                                    if [[ $hp3 -le 0 ]];
                                                                        then 
                                                                               echo -e  "               \e[1m\e[31mDu bist gestorben!\e[0m"
                                                                                sleep 3
                                                                            exit 1
                                                                        else 
                                                                            sleep 3
                                                                            echo "   Du versucht erneut einen Angriff"
                                                                            sleep 2
                                                                            #clear
                                                                            echo "Waehle eine Nummer zwischen 0-1 (0/1)"
                                                                            read Spieler
                                                                            if [[ $beast == $Spieler || $Spieler == "flp" ]];
                                                                                then
                                                                                    echo "   Der Angriff hat gesessen."
                                                                                    echo "       Das Biest wurde besiegt! Glueckwunsch!"
                                                                                else
                                                                                    echo "   Das Biest hat dich mit einem Stein beworfen"
                                                                                    echo " Es werden dir 5 HP abgezogen"
                                                                                    hp4=$(( $hp3 -5 ))
                                                                                    echo " Du hast jetzt $hp3 HP"
                                                                                     if [[ $hp4 -le 0 ]];
                                                                                        then 
                                                                                            echo -e  "               \e[1m\e[31mDu bist gestorben!\e[0m"
                                                                                            sleep 3
                                                                                            exit 1
                                                                                    fi
                                                                            fi
                                                                    fi
                                                            fi
                                                    fi
                                        fi
                            fi
                fi
                #

        echo ""
        echo "   Du steigst wieder in die Kutsche ein und setzt deine fahrt fort"
        echo ""
        echo "  In der Kutsche bietet dir der Kommandant ein großes Bier an.
        Willst du das Bier nehmen? (J/N)"
            read BIER 
                if [[ $BIER == J || $BIER == j ]];
                    then 
                        echo "   Das Bier erfrischt dich so sehr, dass deine Lebenspunkte sich wieder vollstaendig auffuellen"
                        echo "   Du hast wieder $hp HP"
                        read -p "Druecke ENTER um weiter zu machen" ENTER
                        #sleep 3
                    else 
                        echo "  Der Kampf hat dich so erschoepft, dass du ohne Bier Stirbst!"
                        #sleep 2
                        echo -e  "               \e[1m\e[31mDu bist gestorben!\e[0m"
                        sleep 3
                        exit 1
                fi 
        clear 
        echo "  Die Kutsche erreicht die Hauptstadt.."
        sleep 3
        func_battle
fi
#
if [[ $route == 2 ]];
    then 
        echo "   Du packst deine Sachen zusammen und gehst los"
        sleep 2
        echo ""
        echo "   Ein bisschen weiter im Wald findest du eine kleine Fee."
        sleep 1
        echo "   Die kleine Fee haengt am Baum fest."
        echo " Was willst du nun tun?"
        echo "1) Auslachen und weiter gehen"
        echo "2) Der Fee helfen"
        sleep 2
        echo "Triff eine Entscheidung: (1/2)"
        read Fee
        echo ""
            if [[  $Fee == 1  ]];
                then   
                    echo "  Der Anblick der Fee hat dich sehr unterhalten."
                    echo "  Gut gelaunt setzt du deine Reise fort. "
		    sleep 3
                else
                     echo "  Vorsicht befreist du die Fee."
                     sleep 2
                     echo "Oh ein $type, sagte die Fee."
                     sleep 1
                     echo "Als Zeichen meiner Dankbarkeit nehme den Hammer Thors!"
                     sleep 2
                     echo "  $type erhaehlt Thors Hammer"
                     echo "Die Angriffkrafst steigt auf 50!"
                     attack=50
			read -p "Druecke ENTER um weiter zu machen" ENTER
            fi
        echo ""
        sleep 1
        echo "   Die Hauptstadt ist schon von weitem erkennbar."
        echo "   Du gehst den Weg weiter entlang."
        sleep 4
        clear 
        echo "  Was war das fuer ein Geraeusch?"
        echo "  Schnell schaust du dich in alle Richtung um.."
        sleep 3
        clear 
        #echo "                AAAHHH"
echo -e  "                        \e[1m\e[31mAAAAAAAHHH\e[0m"
        sleep 1
	echo "."
sleep 0.5
	clear
	echo ".."
sleep 0.5
	clear
	echo "..."
sleep 0.5
	clear 
	echo ".."
sleep 0.5
	clear
	echo "."
sleep 0.5
	clear
        echo "  Auf einmal ist wieder alles Sill."
        sleep 2
        echo "  Du gehst ein paar Meter weiter"
        sleep 2
        echo " Ein lautes Knurren schallt durch den Wald"
        sleep 3
        clear
        echo ""
        #
        #
         # First beast Battle
                beast=$(( $RANDOM % 2 ))
                echo "          Es erscheint eine kleine Biest. Mach dich Bereit zum Kampf."
                sleep 0.5
                echo "Waehle eine Nummer zwischen 0-1 (0/1)"
                read Spieler

                if [[ $beast == $Spieler || $Spieler == "flp" ]];
                    then
                        echo "   Der Angriff hat gesessen."
                        echo "       Das Biest wurde besiegt! Glueckwunsch!"
                    else
                        echo "   Das Biest hat dich mit einem Stein beworfen"
                        echo " Es werden dir 5 HP abgezogen"
                        hp1=$(( $hp -5 ))
                        echo " Du hast jetzt $hp1 HP"
                            if [[ $hp1 -le 0 ]];
                                then 
                                    echo -e  "               \e[1m\e[31mDu bist gestorben!\e[0m"
                                    sleep 3
                                    exit 1
                                else 
                                    sleep 3
                                    echo "   Du versucht erneut einen Angriff"
                                    #clear
                                    echo "Waehle eine Nummer zwischen 0-1 (0/1)"
                                    read Spieler
                                        if [[ $beast == $Spieler || $Spieler == "flp" ]];
                                            then
                                                echo "   Der Angriff hat gesessen."
                                                echo "       Das Biest wurde besiegt! Glueckwunsch!"
                                            else
                                                echo "   Das Biest hat dich mit einem Stein beworfen"
                                                echo " Es werden dir 5 HP abgezogen"
                                                hp2=$(( $hp1 -5 ))
                                                echo " Du hast jetzt $hp2 HP"
                                                    if [[ $hp2 -le 0 ]];
                                                        then 
                                                            echo -e  "               \e[1m\e[31mDu bist gestorben!\e[0m"
                                                            sleep 3
                                                            exit 1
                                                        else 
                                                            sleep 3
                                                            echo "   Du versucht erneut einen Angriff"
                                                            sleep 2
                                                            #clear
                                                            echo "Waehle eine Nummer zwischen 0-1 (0/1)"
                                                            read Spieler
                                                            if [[ $beast == $Spieler || $Spieler == "flp" ]];
                                                                then
                                                                    echo "   Der Angriff hat gesessen."
                                                                    echo "       Das Biest wurde besiegt! Glueckwunsch!"
                                                                else
                                                                    echo "   Das Biest hat dich mit einem Stein beworfen"
                                                                    echo " Es werden dir 5 HP abgezogen"
                                                                    hp3=$(( $hp2 -5 ))
                                                                    echo " Du hast jetzt $hp3 HP"
                                                                    if [[ $hp3 -le 0 ]];
                                                                        then 
                                                                            echo -e  "               \e[1m\e[31mDu bist gestorben!\e[0m"
                                                                            sleep 3
                                                                            exit 1
                                                                        else 
                                                                            sleep 3
                                                                            echo "   Du versucht erneut einen Angriff"
                                                                            sleep 2
                                                                            #clear
                                                                            echo "Waehle eine Nummer zwischen 0-1 (0/1)"
                                                                            read Spieler
                                                                            if [[ $beast == $Spieler || $Spieler == "flp" ]];
                                                                                then
                                                                                    echo "   Der Angriff hat gesessen."
                                                                                    echo "       Das Biest wurde besiegt! Glueckwunsch!"
                                                                                else
                                                                                    echo "   Das Biest hat dich mit einem Stein beworfen"
                                                                                    echo " Es werden dir 5 HP abgezogen"
                                                                                    hp4=$(( $hp3 -5 ))
                                                                                    echo " Du hast jetzt $hp3 HP"
                                                                                     if [[ $hp4 -le 0 ]];
                                                                                        then 
                                                                                            echo -e  "               \e[1m\e[31mDu bist gestorben!\e[0m"
                                                                                            sleep 3
                                                                                            exit 1
                                                                                    fi
                                                                            fi
                                                                    fi
                                                            fi
                                                    fi
                                        fi
                    fi
                fi
        echo ""
        echo " Du gehst den Weg weiter entlang und stehst nun vor der Hauptstadt"
        echo ""
        sleep 3
        func_battle
##
##
fi
#
echo ""
echo "   Das ganz Land feiert zufrieden ein Fest weil nun alle Biester vertrieben sind!"
Anwender=$(who -s | cut -c 39-80)
#
echo "             Danke $Anwender" 
