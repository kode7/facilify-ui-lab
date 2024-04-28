#!/bin/bash

# Define the Flutter channel
FLUTTER_CHANNEL="stable"

# Automatically update to the latest Flutter version on the stable channel
curl -L https://storage.googleapis.com/flutter_infra_release/releases/$FLUTTER_CHANNEL/linux/flutter_linux_latest-$FLUTTER_CHANNEL.tar.xz | tar Jxv
export PATH="$PATH:`pwd`/flutter/bin"

# Upgrade Flutter to the latest version and ensure dependencies are compatible
flutter upgrade
flutter doctor

# Clean existing build files and Flutter package cache
flutter clean

# Fetch dependencies
flutter pub get

# Build Flutter web app
flutter build web