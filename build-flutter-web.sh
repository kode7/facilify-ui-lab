#!/bin/bash

# Define Flutter version and channel
FLUTTER_CHANNEL="stable"
FLUTTER_VERSION="2.10.3"

# Download and unpack Flutter
curl -L https://storage.googleapis.com/flutter_infra_release/releases/$FLUTTER_CHANNEL/linux/flutter_linux_$FLUTTER_VERSION-$FLUTTER_CHANNEL.tar.xz | tar Jxv
export PATH="$PATH:`pwd`/flutter/bin"

# Ensure fresh dependencies by cleaning the cache
flutter pub cache repair

# Run flutter doctor to confirm setup
flutter doctor

# Clean existing build files
flutter clean

# Fetch dependencies again
flutter pub get

# Build Flutter web app
flutter build web
