#!/bin/bash

# Installieren von Flutter
FLUTTER_CHANNEL=$FLUTTER_VERSION
FLUTTER_VERSION="2.10.3"
curl -L https://storage.googleapis.com/flutter_infra_release/releases/$FLUTTER_CHANNEL/linux/flutter_linux_$FLUTTER_VERSION-$FLUTTER_CHANNEL.tar.xz | tar Jxv
export PATH="$PATH:`pwd`/flutter/bin"

# Flutter Doctor ausführen, um die Installation zu überprüfen
flutter doctor

# Flutter Web App bauen
flutter build web
