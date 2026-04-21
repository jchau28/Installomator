extensisconnect)
    name="Monotype Connect"
    type="dmg"
    downloadURL="https://links.extensis.com/extensis_connect/ec_latest?language=en&platform=mac"
    appName="Monotype Connect.app"
    appNewVersion=$( curl -is "$downloadURL" | grep -i "location:" | grep -o "[[:digit:]]\+-[[:digit:]]\+-[[:digit:]]\+" | sed -e 's/-/./g' )
    expectedTeamID="J6MMHGD9D6"
    blockingProcesses=( "Monotype Connect" "Extensis Connect" )
    ;;
