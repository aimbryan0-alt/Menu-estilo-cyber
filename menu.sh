#!/bin/bash

APP_DIR="$HOME/.local/share/applications"
mkdir -p "$APP_DIR"

create_app () {
  FILE="$APP_DIR/$1.desktop"
  NAME="$2"
  CMD="$3"
  CAT="$4"

  echo "[Desktop Entry]" > "$FILE"
  echo "Name=$NAME" >> "$FILE"
  echo "Exec=$CMD" >> "$FILE"
  echo "Icon=utilities-terminal" >> "$FILE"
  echo "Type=Application" >> "$FILE"
  echo "Categories=$CAT;" >> "$FILE"
}

echo "🔥 Criando apps Cyberdroid..."

# INFORMATION GATHERING
create_app cyber-nmap "Nmap Scan" "nmap -h" "Cyberdroid"
create_app cyber-whois "Whois Lookup" "whois google.com" "Cyberdroid"
create_app cyber-dig "DNS Dig" "dig google.com" "Cyberdroid"
create_app cyber-host "Host Lookup" "host google.com" "Cyberdroid"

# WEB
create_app cyber-burp "Burp Suite" "burpsuite" "Cyberdroid"
create_app cyber-nikto "Nikto Scan" "nikto -h http://example.com" "Cyberdroid"
create_app cyber-curl "Curl Test" "curl http://example.com" "Cyberdroid"

# PASSWORD
create_app cyber-hydra "Hydra Attack" "hydra -h" "Cyberdroid"
create_app cyber-john "John the Ripper" "john --help" "Cyberdroid"

# WIRELESS
create_app cyber-airmon "Airmon-ng" "airmon-ng" "Cyberdroid"
create_app cyber-airodump "Airodump-ng" "airodump-ng" "Cyberdroid"

# EXPLOIT
create_app cyber-msf "Metasploit" "msfconsole" "Cyberdroid"
create_app cyber-searchsploit "Searchsploit" "searchsploit" "Cyberdroid"

# FORENSICS
create_app cyber-binwalk "Binwalk" "binwalk" "Cyberdroid"
create_app cyber-strings "Strings Tool" "strings /bin/ls" "Cyberdroid"

# TERMINAL TOOLS (enche rápido 😈)
for i in {1..40}
do
  create_app cyber-tool$i "Cyber Tool $i" "gnome-terminal" "Cyberdroid"
done

echo "🔄 Atualizando..."
update-desktop-database ~/.local/share/applications

echo "✅ 50+ apps criados no menu 😈"
