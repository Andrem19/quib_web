# Quib Web

Flutter web landing site for a small game studio/project hub.

Quib Web presents game projects such as Maze, Remland, and Starseed with responsive pages, image-heavy hero sections, navigation, social links, and project detail screens. The repository is kept public as a portfolio example of a Flutter web app with GetX routing, reusable UI elements, and Firebase deployment hooks.

## Features

- Responsive Flutter web layout for desktop and mobile.
- Project pages for Maze, Remland, and Starseed.
- Shared header, drawer, menu, logo, play button, text description, and social widgets.
- GetX route definitions and controller binding.
- Image assets for landing screens and game previews.
- Firebase initialization placeholders for web deployment.

## Tech Stack

- Flutter
- Dart
- GetX
- Firebase Core
- Font Awesome Flutter

## Repository Structure

```text
lib/
  Views/        Page-level views for home, games, about, and privacy policy
  controllers/  Main responsive state/controller logic and bindings
  elements/     Shared header, menu, logo, drawer, and CTA elements
  routing/      GetX routes and page registration
  widgets/      Reusable menu and social widgets
assets/images/  Landing and game preview images
```

## Firebase Setup

The public repository uses placeholder Firebase values. To deploy with your own Firebase project, configure Firebase for Flutter web and replace:

```text
lib/firebase_options.dart
.firebaserc
```

## Local Development

```bash
flutter pub get
flutter run -d chrome
```

Build for web:

```bash
flutter build web
```

## Notes

This is an archived portfolio project. Project-specific Firebase values were removed before publication.
