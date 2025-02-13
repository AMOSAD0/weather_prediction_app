# 🚀  Weather Presiction App

A Flutter project implementing Firebase authentication using **Clean Architecture**, **Bloc**, and **FirebaseAuth**.

## 📸 Screenshots
![Login Screen](screenshots/login.png)
![Signup Screen](screenshots/signup.png)

## 📜 Description
This project demonstrates how to integrate Firebase Authentication in a Flutter app using **Clean Architecture** principles. It supports:
- 📧 Email/Password Signup & Login
- 🎨 Clean Architecture Implementation
- 🔐 Firebase Authentication Error Handling
- 🧩 Dependency Injection with `GetIt`
- 🏗️ `Bloc` State Management

## 📚 Tech Stack
- Flutter 🐦
- Dart 🎯
- Firebase Auth 🔥
- BLoC (flutter_bloc) 🔄
- GetIt (Dependency Injection) 💉

## 🚀 Prerequisites
Make sure you have the following installed:
- ✅ Flutter SDK (`>=3.x.x`)
- ✅ Dart (`>=2.x.x`)
- ✅ Firebase CLI & setup configured

## 📂 Project Structure
lib/
│── core/
│   ├── errors/          # Error handling
│   ├── usecases/        # Base use case classes
│
│── features/auth/
│   ├── data/
│   │   ├── datasources/  # Firebase API calls
│   │   ├── models/       # Data models
│   │   ├── repositories/ # Repository implementation
│   │
│   ├── domain/
│   │   ├── entities/     # Core business models
│   │   ├── repositories/ # Abstract repository
│   │   ├── usecases/     # Business logic
│   │
│   ├── presentation/
│       ├── bloc/        # BLoC logic
│       ├── screens/     # UI screens
│
│── injection_container.dart  # Dependency Injection
│── main.dart                 # App entry point



