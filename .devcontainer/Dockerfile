FROM mcr.microsoft.com/devcontainers/base:ubuntu

# تثبيت بيئة GNOME Flashback وتطبيقاتها الأساسية
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install -y --no-install-recommends \
    gnome-session-flashback gnome-terminal \
    tigervnc-standalone-server novnc websockify \
    dbus-x11 x11-xserver-utils \
    firefox nano htop curl wget git \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

USER vscode

# إعداد xstartup لتشغيل GNOME بشكل سليم في بيئة معزولة
RUN mkdir -p ~/.vnc \
    && echo '#!/bin/sh\nunset SESSION_MANAGER\nunset DBUS_SESSION_BUS_ADDRESS\nexport XDG_CURRENT_DESKTOP=GNOME-Flashback:GNOME\nexec dbus-run-session -- gnome-session --session=gnome-flashback-metacity' > ~/.vnc/xstartup \
    && chmod +x ~/.vnc/xstartup \
    && echo "SecurityTypes=None" > ~/.vnc/config
