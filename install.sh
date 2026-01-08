#!/usr/bin/env bash

mkdir -p ~/.local/share/xitter
cp index.html ~/.local/share/xitter/
cp feed.html ~/.local/share/xitter/

mkdir -p ~/.local/share/applications
cat > ~/.local/share/applications/xitter.desktop << 'EOF'
[Desktop Entry]
Name=xitter
Comment=your favorite accounts
Exec=xdg-open ~/.local/share/xitter/index.html
Icon=applications-internet
Terminal=false
Type=Application
Categories=Network;
EOF

mkdir -p ~/.local/bin
cat > ~/.local/bin/xitter << 'EOF'
#!/usr/bin/env bash
xdg-open ~/.local/share/xitter/index.html
EOF
chmod +x ~/.local/bin/xitter

echo "xitter installed successfully!"
echo ""
echo " - type 'xitter' in the terminal to open"
echo " - or search for 'xitter' in the applications menu"
