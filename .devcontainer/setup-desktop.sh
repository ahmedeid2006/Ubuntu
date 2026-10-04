#!/bin/bash
# إنشاء مجلد VNC الخاص بالمستخدم وتعيين XFCE كمدير النوافذ الافتراضي
mkdir -p ~/.vnc
cat << 'EOF' > ~/.vnc/xstartup
#!/bin/bash
xrdb $HOME/.Xresources
startxfce4 &
EOF
chmod +x ~/.vnc/xstartup
