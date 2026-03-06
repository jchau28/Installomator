jumpdesktop)
    name="Jump Desktop"
    type="zip"
    downloadURL="https://jumpdesktop.com/downloads/jdmac"
    appNewVersion=$(curl -fsIL "$downloadURL" \
        | grep -i "^location:" \
        | grep -oE '[0-9]{5}' \
        | sed 's/\([0-9]\)\([0-9]\)\([0-9]\{2\}\)/\1.\2.\3/')
    expectedTeamID="2HCKV38EEC"
    ;;