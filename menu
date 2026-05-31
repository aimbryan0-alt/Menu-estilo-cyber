#!/bin/bash

echo "🔥 Criando categorias Cyberdroid..."

DIR="$HOME/.local/share/desktop-directories"
mkdir -p "$DIR"

create_category () {
  FILE="$DIR/$1"
  NAME="$2"
  ICON="$3"

  echo "[Desktop Entry]" > "$FILE"
  echo "Name=$NAME" >> "$FILE"
  echo "Icon=$ICON" >> "$FILE"
  echo "Type=Directory" >> "$FILE"
}

create_category "cyber-info.directory" "Information Gathering" "system-search"
create_category "cyber-vuln.directory" "Vulnerability Analysis" "dialog-warning"
create_category "cyber-web.directory" "Web Application Analysis" "applications-internet"
create_category "cyber-db.directory" "Database Assessment" "server-database"
create_category "cyber-pass.directory" "Password Attacks" "dialog-password"
create_category "cyber-wireless.directory" "Wireless Attacks" "network-wireless"
create_category "cyber-reverse.directory" "Reverse Engineering" "applications-development"
create_category "cyber-exploit.directory" "Exploitation Tools" "applications-system"
create_category "cyber-sniff.directory" "Sniffing & Spoofing" "network-workgroup"
create_category "cyber-post.directory" "Post Exploitation" "utilities-terminal"
create_category "cyber-forensics.directory" "Forensics" "drive-harddisk"
create_category "cyber-report.directory" "Reporting Tools" "text-x-generic"
create_category "cyber-social.directory" "Social Engineering" "system-users"
create_category "cyber-hardware.directory" "Hardware Hacking" "computer"

echo "⚙️ Criando menu Cyberdroid..."

MENU_DIR="$HOME/.config/menus"
mkdir -p "$MENU_DIR"

cat > "$MENU_DIR/applications.menu" <<EOF
<!DOCTYPE Menu PUBLIC "-//freedesktop//DTD Menu 1.0//EN"
 "http://www.freedesktop.org/standards/menu-spec/menu-1.0.dtd">
<Menu>
  <Name>Applications</Name>

  <Menu>
    <Name>Cyberdroid</Name>

    <Menu><Name>Information Gathering</Name><Directory>cyber-info.directory</Directory><Include><Category>CyberInfo</Category></Include></Menu>
    <Menu><Name>Vulnerability Analysis</Name><Directory>cyber-vuln.directory</Directory><Include><Category>CyberVuln</Category></Include></Menu>
    <Menu><Name>Web Application Analysis</Name><Directory>cyber-web.directory</Directory><Include><Category>CyberWeb</Category></Include></Menu>
    <Menu><Name>Database Assessment</Name><Directory>cyber-db.directory</Directory><Include><Category>CyberDB</Category></Include></Menu>
    <Menu><Name>Password Attacks</Name><Directory>cyber-pass.directory</Directory><Include><Category>CyberPass</Category></Include></Menu>
    <Menu><Name>Wireless Attacks</Name><Directory>cyber-wireless.directory</Directory><Include><Category>CyberWireless</Category></Include></Menu>
    <Menu><Name>Reverse Engineering</Name><Directory>cyber-reverse.directory</Directory><Include><Category>CyberReverse</Category></Include></Menu>
    <Menu><Name>Exploitation Tools</Name><Directory>cyber-exploit.directory</Directory><Include><Category>CyberExploit</Category></Include></Menu>
    <Menu><Name>Sniffing & Spoofing</Name><Directory>cyber-sniff.directory</Directory><Include><Category>CyberSniff</Category></Include></Menu>
    <Menu><Name>Post Exploitation</Name><Directory>cyber-post.directory</Directory><Include><Category>CyberPost</Category></Include></Menu>
    <Menu><Name>Forensics</Name><Directory>cyber-forensics.directory</Directory><Include><Category>CyberForensics</Category></Include></Menu>
    <Menu><Name>Reporting Tools</Name><Directory>cyber-report.directory</Directory><Include><Category>CyberReport</Category></Include></Menu>
    <Menu><Name>Social Engineering</Name><Directory>cyber-social.directory</Directory><Include><Category>CyberSocial</Category></Include></Menu>
    <Menu><Name>Hardware Hacking</Name><Directory>cyber-hardware.directory</Directory><Include><Category>CyberHardware</Category></Include></Menu>

  </Menu>
</Menu>
EOF

echo "🔄 Atualizando banco de apps..."
update-desktop-database ~/.local/share/applications 2>/dev/null

echo "✅ CYBERDROID MENU INSTALADO COM SUCESSO 😈"
