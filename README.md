# Flutter Advanced Widgets training task

A comprehensive Flutter app demonstrating advanced widget usage including Cards, ListTiles, GridView, ListView, Buttons, Form Controls, Stack layouts, and Network Images.

## 📱 Task Overview

This app showcases advanced Flutter development skills through practical implementation of complex widgets, user interface controls, GridView, ListView, Stack layouts, and Network Images.



## 🛠️ Technologies Used

- **Flutter SDK** (Latest Version)
- **Dart Programming Language**
- **Material Design 3**
- **Network Image Handling**
- **Responsive UI Design**

## 📋 Prerequisites

Before running this project, ensure you have:

- Flutter SDK installed (latest stable version)
- Dart SDK (comes with Flutter)
- Android Studio / VS Code with Flutter extensions
- Internet connection (for network images)
- Android Emulator or physical device

## 🚀 Installation & Setup

**Important:** This repository contains only the `lib` folder with the source code.

### Step 1: Create New Flutter Project
```bash
flutter create flutter_advanced_widgets
cd flutter_advanced_widgets
```

### Step 2: Replace lib folder
1. Delete the existing `lib` folder from your new project
2. Download/clone this repository 
3. Copy the `lib` folder from this repo to your project directory

### Step 3: Install Dependencies
```bash
flutter pub get
```

### Step 4: Run the Project
```bash
flutter run
```

## 📁 Project Structure

```
lib/
├── main.dart          # App entry point - currently running TaskTwo
├── task1.dart         # Advanced widgets implementation
├── task2.dart         # Additional task implementation  
└── task3.dart         # Extended functionality (if exists)
```

## 🔄 Switching Between Tasks

The project supports multiple tasks for different learning objectives:

### Current Configuration:
```dart
// In main.dart
import 'task2.dart';
home: Scaffold(body: const TaskTwo()),
```

### To Switch to Task 1:
1. Update import in `main.dart`:
   ```dart
   import 'task1.dart';  // Change to task1.dart
   ```

2. Update the home widget:
   ```dart
   home: Scaffold(body: const TaskOne()),  // Change to TaskOne()
   ```

### To Switch to Task 3 (if available):
1. Update import: `import 'task3.dart';`
2. Update home widget: `home: Scaffold(body: const TaskThree()),`

## 🎯 Features Demonstrated

### Task 1 - Advanced UI Components:

#### 🏗️ **Layout & Structure**
- **Scaffold** with custom AppBar
- **ListView** for scrollable content
- **Padding** and **SizedBox** for spacing
- **Card** widgets with elevation effects

#### 🖼️ **Image Handling**
- **Network Images** with error handling
- **ClipRRect** for rounded corners
- **Image.network** with fallback mechanisms
- **BoxFit.cover** for responsive images

#### 🎛️ **Interactive Controls**
- **ElevatedButton** and **OutlinedButton**
- **Switch** for toggle controls
- **Checkbox** for selection options
- **Radio** buttons for single selection
- Proper event handling structure

#### 📱 **Advanced Widgets**
- **ListTile** with leading, title, subtitle, and trailing
- **Stack** widget for layered layouts
- **Container** with advanced styling
- **Row** and **Column** with proper alignment

### Task 2 - Complex Layouts & Lists:

#### 📋 **List Management**
- **ListView** with multiple widget types
- **ListView.builder** for dynamic horizontal lists
- **GridView.count** for grid layouts
- **ScrollDirection.horizontal** for horizontal scrolling

#### 🎨 **Layout Techniques**
- **Stack** widget with centered alignment
- **Container** with BoxDecoration and BorderRadius
- **Divider** for visual separation
- **Row** and **Column** with MainAxisAlignment

#### 🏷️ **UI Components**
- **Card** with ListTile for profile displays
- **Icon** with custom colors and sizes
- **Text** with various styling options
- Form controls (Checkbox, Switch, Radio) with proper centering

#### 🎯 **Design Patterns**
- Modular widget architecture
- Reusable components with different configurations
- Consistent Material Design theming
- Responsive layout principles

## 🔧 Technical Implementation

### Code Organization:
- **Separated Widget Classes**: Each UI component in its own class
- **Reusable Components**: Generic widgets like `TextTitleWidget`
- **Clean Architecture**: Logical separation of concerns
- **Error Handling**: Network image fallbacks and error states

### Key Technical Features:
- **Network Image Loading** with error handling
- **State Management** preparation (StatelessWidget structure)
- **Material Design 3** compliance
- **Responsive UI** that works across devices
- **Memory Efficient** widget tree structure

## 📱 UI Components Preview

### Task 1 Features:
- **Welcome Header** - Styled title with custom typography
- **User Profile Card** - ListTile with icons and navigation
- **Image Card** - Network image with rounded corners and title
- **Control Buttons** - ElevatedButton and OutlinedButton
- **Form Controls** - Switch, Checkbox, and Radio buttons
- **Stack Example** - Layered containers demonstration

### Task 2 Features:
- **Name Card** - Personal information display with ListTile
- **Products Section** - Icons and product listings with divider
- **GridView** - 2x2 grid layout with colored containers
- **Horizontal ListView** - Scrollable horizontal list with gradient colors
- **Stack Layout** - Multi-layered centered containers
- **Form Selectors** - Centered form controls (Checkbox, Switch, Radio)
- **Styled Text** - Custom typography examples

## 🎓 Skills Showcased

This project demonstrates proficiency in:

- **Advanced Flutter Widgets** - Complex widget composition beyond basics
- **List Management** - ListView, GridView, and ListView.builder implementations
- **Layout Techniques** - Stack, Row, Column with proper alignment
- **Network Programming** - Image loading and error handling
- **UI/UX Design** - Material Design principles and responsive layouts
- **Code Organization** - Clean, maintainable, and scalable structure
- **Error Handling** - Graceful degradation and user feedback
- **Widget Reusability** - Modular components and consistent patterns

## 🔍 Learning Outcomes

This project demonstrates understanding of:

- Complex widget composition and nesting
- Dynamic list building with ListView.builder
- Grid layouts with GridView.count
- Horizontal scrolling implementations
- Network resource management in Flutter
- User interface control implementation
- Material Design component usage
- Error handling and user experience considerations
- Code modularity and reusability principles
- Stack widget for layered UI elements

## 🌐 Network Dependencies

This project uses network images from Unsplash. Ensure internet connectivity for proper image loading. The app includes fallback mechanisms for offline scenarios.

## 🚀 Future Enhancements

Potential improvements could include:
- State management implementation (Bloc/Provider)
- Local image caching
- Animation and transition effects
- Database integration
- Navigation between screens

## 📱 Testing Platforms

Tested and verified on:
- Android Emulator
- Physical Android devices
- iOS Simulator (if available)
- Different screen sizes and orientations

---
Developed by : Ahmed

*This project demonstrates advanced Flutter development skills and professional code organization for modern mobile application development.*
