
# Flutter Boilerplate

A template for starting Flutter projects. This project uses **Flutter**, **GetX** for state management, **Easy Localization** for internationalization, and several other useful packages.

## Project Structure

This Flutter project template includes the following folder structure:

```
flutter_basic/
├── assets/
│   ├── images/
│   └── lang/
├── build/
├── ios/
├── lib/
│   ├── components/
│   ├── helpers/
│   ├── pages/
│   └── state/
└── pubspec.yaml
```

## Features

- **State Management**: Using **GetX** for reactive state management.
- **Localization**: Supports **multi-language localization** with **easy_localization**.
- **Networking**: Integrated **Dio** for HTTP requests.
- **Database**: Local storage using **Hive**.
- **Charts**: Integration of **fl_chart** for charts.
- **Environment Variables**: Loaded using **flutter_dotenv**.

## Getting Started

### Prerequisites

Make sure you have **Flutter** and **Dart** installed. You can follow the official Flutter installation guide:

- [Flutter installation guide](https://flutter.dev/docs/get-started/install)

### Clone the repository

Clone the repository to your local machine using Git:

```bash
git clone https://github.com/your-username/flutter_basic.git
cd flutter_basic
```

### Install Dependencies

Run the following command to install the required dependencies:

```bash
flutter pub get
```

### Run the Application

After setting up the dependencies, you can run the application using:

```bash
flutter run
```

### Testing

To run tests, use the following command:

```bash
flutter test
```

## Folder Structure

- **assets/**: Contains all the static assets like images and localization files (JSON).
- **lib/**: Main directory for app code.
  - **components/**: Reusable UI components.
  - **helpers/**: Helper classes and utility functions.
  - **pages/**: The screens or pages of your application.
  - **state/**: State management (controllers and states).
- **ios/**: iOS-specific code and configuration.
- **build/**: The build directory.

## Dependencies

### Core Dependencies:
- **flutter**: ^3.7.2
- **get**: ^4.6.5
- **dio**: ^5.8.0+1
- **hive**: ^2.2.0
- **fl_chart**: ^0.71.0
- **json_serializable**: ^6.9.4
- **easy_localization**: ^3.0.0
- **flutter_dotenv**: ^5.2.1
- **intl**: ^0.19.0

### Development Dependencies:
- **flutter_lints**: ^5.0.0
- **flutter_test**: Included with Flutter SDK

## Localization

This project supports multiple languages using **easy_localization**. The default languages are **English** and **Indonesian**. To add more languages, you can create new JSON files in the **`assets/lang/`** folder.

### Example Localization Files:
- **assets/lang/en-US.json**: English translations.
- **assets/lang/id-ID.json**: Indonesian translations.

### How to Change the Locale:
To switch between languages, use the `EasyLocalization` widget and set the desired locale. Example:

```dart
EasyLocalization(
  supportedLocales: [Locale('en', 'US'), Locale('id', 'ID')],
  path: 'assets/lang',
  fallbackLocale: Locale('en', 'US'),
  child: MyApp(),
)
```

## Folder and File Naming Conventions

- **Helper Files**: All helper files (e.g., `text_styles.dart`, `app_theme.dart`) are placed under the **helpers/** directory.
- **Pages**: All page files are placed under the **pages/** directory, for example, `home_page.dart`, `profile_page.dart`.
- **State Management**: Use **GetX controllers** for managing state, placed under **state/**.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
