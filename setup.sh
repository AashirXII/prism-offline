CONFIG_DIR="~/.local/share/PrismLauncher"
FILE_PATH="$CONFIG_DIR/accounts.json"

mkdir -p "$CONFIG_DIR"

cat << 'EOF' > "$FILE_PATH"
{
  "accounts": [
    {
      "entitlement": {
        "canPlayMinecraft": true,
        "ownsMinecraft": true
      },
      "type": "MSA"
    }
  ],
  "formatVersion": 3
}
EOF
