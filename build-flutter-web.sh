#!/bin/bash

# Define Flutter channel and version
FLUTTER_CHANNEL="stable"
FLUTTER_VERSION="2.10.3"

# Download and unzip Flutter
curl -L https://storage.googleapis.com/flutter_infra_release/releases/$FLUTTER_CHANNEL/linux/flutter_linux_$FLUTTER_VERSION-$FLUTTER_CHANNEL.tar.xz | tar Jxv
export PATH="$PATH:`pwd`/flutter/bin"

# Run flutter doctor to verify installation
flutter doctor

# Clean existing build files and fetch dependencies
flutter clean
flutter pub get

# Build Flutter web app
flutter build web
