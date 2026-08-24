signiantapp)
    name="Signiant App"
    type="pkgInDmg"
    preinstall() {
        local legacyPath="/Applications/Signiant App.app"
        if [[ -d "$legacyPath" ]]; then
            local legacyVersion
            legacyVersion=$(defaults read "$legacyPath/Contents/Info.plist" CFBundleShortVersionString 2>/dev/null)
            printlog "Removing legacy Signiant App v1 (${legacyVersion:-unknown version}) at $legacyPath prior to v2 install"
            rm -rf "$legacyPath"
        fi
    }
    manifestJSON="$(curl -fs "https://updates.signiant.com/signiant-app-v2/signiant-app-v2-info.json")"
    appNewVersion="$(echo "$manifestJSON" | grep -o '"version": *"[^"]*"' | head -1 | awk -F'"' '{print $4}')"
    manifestLocation="$(echo "$manifestJSON" | grep -o '"location": *"[^"]*"' | awk -F'"' '{print $4}')"
    manifestFile="$(echo "$manifestJSON" | grep -B2 '"platform": "osx-dmg"' | grep '"file"' | awk -F'"' '{print $4}')"
    downloadURL="https://updates.signiant.com/${manifestLocation}/${manifestFile}"
    pkgName="Signiant App ${appNewVersion}.pkg"
    expectedTeamID="U6ZZ4QLU4Q"
    ;;
    
