# Flutter Login UI

A beautiful and modern Flutter application showcasing elegant login and registration screens with social authentication options.

## 📱 Features

- **Welcome Screen** - Attractive onboarding screen with app introduction
- **Login Screen** - Clean login interface with email/username and password fields
- **Registration Screen** - User-friendly signup form with form validation
- **Social Authentication** - Integration with Google, LinkedIn, and Facebook login options
- **Responsive Design** - Optimized for various screen sizes
- **Modern UI/UX** - Contemporary design with smooth transitions

## 🎨 Screenshots

### Welcome Screen
- App logo and welcome message
- Call-to-action buttons for Login and Register

### Login Screen
- Username/Email input field
- Password input field with secure text entry
- Social media login options (Google, LinkedIn, Facebook)
- Navigation to registration screen

### Registration Screen
- Full name input field
- Email input field
- Password and confirm password fields
- Form validation and user feedback

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (>=3.0.0)
- Dart SDK (>=2.17.0)
- Android Studio / VS Code
- Git

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/flutter_login_ui.git
   cd flutter_login_ui
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Add required assets**
   Make sure you have the following assets in your project:
   ```
   assets/
   ├── illustrations/
   │   └── solo.png
   └── icons/
       └── arrow_long_left.svg
   ```

4. **Run the application**
   ```bash
   flutter run
   ```

## 📦 Dependencies

Add these dependencies to your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_svg: ^2.0.7
  font_awesome_flutter: ^10.5.0

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^2.0.0
```

## 🏗️ Project Structure

```
lib/
├── main.dart                 # App entry point
├── screens/
│   ├── onboarding/
│   │   └── welcome_screen.dart    # Welcome/Landing screen
│   ├── login/
│   │   └── login_screen.dart      # Login screen
│   └── register/
│       └── register_screen.dart   # Registration screen
```

## 🎯 Navigation Routes

The app uses named routes for navigation:

- `/` - Welcome Screen (initial route)
- `/welcome` - Welcome Screen
- `/login` - Login Screen
- `/register` - Registration Screen

## 🎨 Design Features

### Color Scheme
- **Primary**: Black (#000000)
- **Secondary**: Grey (#B0B0B0)
- **Background**: White (#FFFFFF)
- **Text**: Various shades of grey for hierarchy

### Typography
- **Headers**: Bold, 30-40px
- **Subheaders**: Regular, 20px
- **Body**: Regular, 14-16px
- **Buttons**: Semi-bold, 18px

### UI Components
- **Rounded corners**: 15-18px border radius
- **Input fields**: Outlined style with grey borders
- **Buttons**: Elevated style with rounded corners
- **Icons**: SVG and FontAwesome icons

## 🔧 Customization

### Changing Colors
Update colors in each screen file:
```dart
backgroundColor: Colors.black,  // Change primary color
foregroundColor: Colors.white, // Change text color
```

### Modifying Text Styles
Adjust typography in the TextStyle widgets:
```dart
TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
  color: Colors.black,
)
```

### Adding New Screens
1. Create new screen file in appropriate folder
2. Add route in `main.dart`
3. Update navigation calls

## 🌟 Social Authentication Setup

### Google Sign-In
1. Add Google Services configuration
2. Configure OAuth consent screen
3. Add necessary permissions

### Facebook Login
1. Create Facebook App
2. Configure Facebook SDK
3. Add app hash keys

### LinkedIn Authentication
1. Create LinkedIn App
2. Configure OAuth settings
3. Add redirect URLs

## 📱 Responsive Design

The UI is designed to work across different screen sizes:
- **Mobile phones**: Optimized layout and spacing
- **Tablets**: Adaptive sizing and positioning
- **Different orientations**: Portrait and landscape support

## 🧪 Testing

Run tests using:
```bash
flutter test
```

## 🚀 Deployment

### Android
```bash
flutter build apk --release
```

### iOS
```bash
flutter build ios --release
```

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request
