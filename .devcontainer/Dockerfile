FROM mcr.microsoft.com/devcontainers/base:ubuntu

# تثبيت واجهة XFCE ومتصفح فايرفوكس وأدوات VNC بصلاحيات الروت
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install -y --no-install-recommends \
    xfce4 xfce4-goodies \
    tigervnc-standalone-server novnc websockify \
    dbus-x11 x11-xserver-utils \
    firefox nano htop curl wget git \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# التبديل إلى المستخدم vscode لضبط إعدادات الشاشة
USER vscode

# إعداد سكريبت تشغيل الواجهة وإلغاء الباسورد
RUN mkdir -p ~/.vnc \
    && echo "#!/bin/bash\nstartxfce4 &" > ~/.vnc/xstartup \
    && chmod +x ~/.vnc/xstartup \
    && echo "SecurityTypes=None" > ~/.vnc/config
