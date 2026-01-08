#!/usr/bin/env bash

mkdir -p ~/Library/Application\ Support/xitter
cp index.html ~/Library/Application\ Support/xitter/
cp feed.html ~/Library/Application\ Support/xitter/
mkdir -p ~/.local/bin
cat > ~/.local/bin/xitter << 'EOF'

#!/usr/bin/env bash
open ~/Library/Application\ Support/xitter/index.html
EOF
chmod +x ~/.local/bin/xitter

if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bash_profile
fi

echo "xitter installed successfully!"
echo ""
echo " - restart your terminal"
echo " - then type 'xitter' to open"
