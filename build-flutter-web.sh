#!/bin/bash

# Install Flutter
git clone https://github.com/flutter/flutter.git -b stable
export PATH="$PATH:`pwd`/flutter/bin"

# Upgrade Flutter to the latest version and ensure dependencies are compatible
flutter upgrade
flutter doctor

# Clean existing build files and Flutter package cache
flutter clean

# Fetch dependencies
flutter pub outdated

# Build Flutter web app
flutter build web