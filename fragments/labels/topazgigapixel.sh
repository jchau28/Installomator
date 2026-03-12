topazgigapixel|topazgigapixelai)
    name="Topaz Gigapixel"
    type="pkg"
    appNewVersion=$(curl -fsIL "https://topazlabs.com/d/gigapixelstudio/latest/mac/full" | grep -i "location:" | tail -1 | grep -o '[0-9]\+\.[0-9]\+\.[0-9]\+')
    versionKey="CFBundleShortVersionString"
    downloadURL="https://topazlabs.com/d/gigapixelstudio/latest/mac/full"
    archiveName="TopazGigapixel-${appNewVersion}.pkg"
    expectedTeamID="3G3JE37ZHF"
    ;;
