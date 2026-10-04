FROM mcr.microsoft.com/devcontainers/base:ubuntu

# إيقاف التفاعل التلقائي أثناء تثبيت الحزم لتجنب توقف عملية البناء
ENV DEBIAN_FRONTEND=noninteractive

# تحديث مستودعات النظام وتثبيت بيئة سطح المكتب XFCE4 وأدوات إضافية
RUN apt-get update && apt-get install -y --no-install-recommends \
    xfce4 \
    xfce4-goodies \
    software-properties-common \
    wget \
    gpg \
    apt-transport-https \
    dbus-x11 \
    sudo && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
