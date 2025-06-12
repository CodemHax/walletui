# Wallet UI

A modern and clean wallet management interface built with Flutter.

## Overview

Wallet UI is a beautifully designed mobile application template that showcases a digital wallet interface. It features card management, transaction history, payment options, and a modern navigation system.

## Features

- **Card Management**: Swipeable card carousel with smooth page indicators
- **Multiple Cards**: Support for displaying multiple payment cards with different colors
- **Quick Actions**: Send money, pay bills, and make payments with a tap
- **Transaction History**: View your past financial activities
- **Statistics**: Check payment analytics and insights
- **Modern UI**: Clean design with intuitive navigation

## Screenshots

![Wallet UI Screenshot](https://i.ibb.co/Xnqvv50/Screenshot-2025-06-12-195019.png)

## Card Features

Each card in the wallet displays:
- Current balance
- Card number
- Expiration date
- Custom color schemes

## Navigation

The app includes:
- Bottom navigation bar with intuitive icons
- Floating action button for primary financial actions
- Clean, organized sections for different wallet features

## Project Structure

```
lib/
├── main.dart                  # App entry point
├── icons/                     # App icons and images
└── pages/
    ├── home_page.com.dart     # Main wallet screen
    └── widgets/
        ├── my_cards.dart      # Card display component
        ├── action_button.dart # Action buttons for payments
        └── Tile.dart          # List tile component
```

## Getting Started

### Prerequisites
- Flutter SDK
- Dart SDK
- Android Studio or VS Code with Flutter extension

### Installation

1. Clone the repository
```bash
git clone https://github.com/codemhsx/walletui.git
```

2. Install dependencies
```bash
flutter pub get
```

3. Run the application
```bash
flutter run
```

## Customization

You can easily customize this UI by:
- Changing card colors and information in the `cards` list
- Updating icons in the 'icons' folder
- Modifying the theme colors in `main.dart`
- Adding new functionality to the action buttons

## Dependencies

- `flutter/material.dart` - Core Flutter UI components
- `smooth_page_indicator` - For the card swipe indicators

## Contributing

Contributions are welcome! Feel free to submit pull requests or open issues to improve the UI.

Created with ❤️ using Flutter
