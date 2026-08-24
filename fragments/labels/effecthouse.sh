effecthouse)
    name="Effect House"
    type="dmg"
    if [[ $(arch) == "arm64" ]]; then
        archServer="arm64"
    elif [[ $(arch) == "i386" ]]; then
        archServer="x86_64"
    fi
    downloadURL=$(curl -s -o /dev/null -w "%{redirect_url}" -X POST "https://effecthouse.tiktok.com/api/web/download" --data "osType=macOS&arch=${archServer}&entryPoint=104")
    appNewVersion=$(echo "$downloadURL" | sed -E 's/.*Effect_House_v([0-9.]+)_.*/\1/')
    expectedTeamID="BZ78BDHTNC"
    ;;
