#!/usr/bin/env bash

echo -e "\nINSTALLING INTELLIJ IDEA ULTIMATE\n"
mkdir -p /opt/idea
wget -c "https://download.jetbrains.com/product?code=IU&latest&distribution=linux" -O - | tar xz -C /opt/idea --strip-components 1

mkdir -p "/home/$username/.kde4/share/templates"
cat << EOF >> "/home/$username/.kde4/share/templates/idea.application"
[Desktop Entry]
Name=IntelliJ IDEA Ultimate
Exec=/opt/idea/bin/idea.sh
Type=Application
Categories=Development
Icon=/opt/idea/bin/idea.svg
EOF
