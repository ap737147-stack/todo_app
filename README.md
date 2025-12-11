# 📝 Flutter Todo App

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green.svg?style=for-the-badge)

**A beautiful and functional todo application built with Flutter featuring stunning gradient UI and smooth animations.**

[Features](#-features) • [Screenshots](#-screenshots) • [Installation](#-installation) • [Architecture](#-architecture) • [Contributing](#-contributing)

## ✨ Features

- ✅ **Add Todos** - Quickly add new tasks to your list
- ✏️ **Edit Todos** - Update existing tasks with ease
- 🗑️ **Delete Todos** - Remove completed or unwanted tasks
- ✔️ **Toggle Completion** - Mark tasks as done/undone with a single tap
- 🔍 **Real-time Search** - Instantly filter todos as you type
- 🎨 **Beautiful Gradient UI** - Eye-catching purple and pink gradient design
- 📱 **Responsive Design** - Works seamlessly on all screen sizes
- ⚡ **Fast & Smooth** - Optimized performance with clean architecture
- 🏗️ **Clean Code** - Separated business logic from UI components

## 📱 Screenshots

| Home Screen | Add Todo | Edit Todo |
|------------|----------|-----------|
| ![Homscreenshotsots/home.png) | !   (screenshots/add.png) | !Beforereenshots/edit.png) |

## 🚀 Getting Started

### PrerequicontrolBefore you begin, ensure you have met the following requirements:

- **Flutter SDK**: `>=3.0.0`
- **Dart SDK**: `>=3.0.0`
- **IDE**: Android Studio / VS Code / IntelliJ IDEA
- **Git**: For version control

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/ap737147-stack/todo_app.git
   cd todo_app
yourusernamestall dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

4. **Build APK (Android)**
   ```bash
   flutter build apk --release
   ```

5. **Build IPA (iOS)**
   ```bash
   flutter build ios --release
   ```

## 🏗️ Architecture

This project follows **Clean Architecture** principles with separation of concerns:

```
lib/
├── models/              # Data models and entities
│   └── todo.dart
├── services/            # Business logic layer
│   └── todo_service.dart
├── screens/             # UI screens
│   └── todo_screen.dart
├── widgets/             # Reusable UI components
│   └── todo_item.dart
└── main.dart           # Application entry point
```

### Architecture Highlights

- **Models**: Pure Dart classes representing data structures
- **Services**: Contains all business logic and data operations
- **Screens**: Stateful widgets that handle UI state
- **Widgets**: Reusable UI components used across screens

## 🛠️ Built With

- **[Flutter](https://flutter.dev/)** - UI framework
- **[Dart](https://dart.dev/)** - Programming language
- **Material Design** - Design system

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.2
```

## 💡 Key Concepts Demonstrated

- ✅ State Management with StatefulWidget
- ✅ Custom Widgets and Reusability
- ✅ TextEditingController for input handling
- ✅ ListView.builder for efficient list rendering
- ✅ Search functionality with filtering
- ✅ Dialog boxes for user interactions
- ✅ Gradient decorations and modern UI
- ✅ Separation of concerns (UI vs Logic)

## 🎯 Future Enhancements

- [ ] Add local storage (SQLite/Hive)
- [ ] Implement categories for todos
- [ ] Add due dates and reminders
- [ ] Dark mode support
- [ ] Priority levels (High/Medium/Low)
- [ ] Swipe to delete gesture
- [ ] Statistics dashboard
- [ ] Cloud sync with Firebase
- [ ] Export/Import todos

## 📝 Code Quality

- Clean and readable code
- Proper naming conventions
- Comprehensive comments
- Separated business logic
- Reusable components
- Error handling

## 🤝 Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

## Licenlayerhis project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

```
MIT License

Copyright (c) 2024 Your Name

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

## 👨‍💻 Author

Alok Pandey

- GitHub: [@ap737147-stack](https://github.com/ap737147-stack)
- LinkedIn: [Alok Kumar Pandey ](https://linkedin.com/)
- Email: ap737147@gmail.com

Email� Acknowledgments

- [Flutter Documentation](https://docs.flutter.dev/)
- [Material Design Guidelines](https://material.io/design)
- [Dart Style Guide](https://dart.dev/guides/language/effective-dart/style)

## 📊 Project Stats

![GitHub stars](https://img.shields.io/github/stars/yourusername/flutter-todo-app?style=social)
![GitHub forks](https://img.shields.io/github/forks/yourusername/flutter-todo-app?style=social)
![GitHub watchers](https://img.shields.io/github/watchers/yourusername/flutter-todo-app?style=social)

---

**If you found this project helpful, please give it a ⭐️!**

Made with ❤️ and Flutter

</div>
