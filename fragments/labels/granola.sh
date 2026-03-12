granola)
    name="Granola"
    type="dmg"
    downloadURL="https://api.granola.ai/v1/download-latest"
    appNewVersion=$(curl -fsIL "https://api.granola.ai/v1/download-latest" | grep -i "^location" | grep -oE '[0-9]+\.[0-9]+\.[0-9]+' | head -1)
    expectedTeamID="QZ7DHHLN25"
    ;;