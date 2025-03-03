# 🚀 Weather Prediction App

A Flutter application that predicts weather conditions using **AI Model**, **Geolocator**, and **Firebase Authentication** with **Clean Architecture** and **Bloc** state management.

## 📸 Screenshots
### 🔑 Login
<img src="screenshots/LogIn.gif" width="300">
 
### 🆕 Signup 
<img src="screenshots/SignUp.gif" width="300">

## ▶️ Running the Application
<img src="screenshots/ai model.gif" width="300">



## 📜 Description
This project fetches weather data for **today, tomorrow, and the day after** using **Geolocator** to detect the user's city. The application then sends this data to a locally hosted **AI Model (Python script)**, which determines whether the weather conditions are suitable for going out.

### Features:
- 🌦 Fetches weather data for **3 days**
- 📍 Uses **Geolocator** for real-time location detection
- 🧠 Connects to a locally hosted **AI Model** for weather suitability prediction
- 🔐 Firebase Authentication (Email/Password Signup & Login)
- 🎨 Implements **Clean Architecture**
- 🏗 Uses **Bloc** for state management
- 🧩 Dependency Injection with `GetIt`

## 📚 Tech Stack
- Flutter 🐦
- Dart 🎯
- Firebase Auth 🔥
- Geolocator 📍
- BLoC (flutter_bloc) 🔄
- GetIt (Dependency Injection) 💉
- Python (AI Model) 🐍
- Dio (API Integration) 🌐
- Hive (Local Storage) 📦
- Flutter 🐦
- Dart 🎯
- Firebase Auth 🔥
- Geolocator 📍
- BLoC (flutter_bloc) 🔄
- GetIt (Dependency Injection) 💉
- Python (AI Model) 🐍
- Dio (API Integration) 🌐
- Flutter 🐦
- Dart 🎯
- Firebase Auth 🔥
- Geolocator 📍
- BLoC (flutter_bloc) 🔄
- GetIt (Dependency Injection) 💉
- Python (AI Model) 🐍

## 🚀 Prerequisites
Make sure you have the following installed:
- ✅ Flutter SDK (`>=3.x.x`)
- ✅ Dart (`>=2.x.x`)
- ✅ Firebase CLI & setup configured
- ✅ Python (`>=3.12.3`) for running the AI model

## ⚙️ Setup & Run
### Clone the Repo and Local Host the AI Model by Following These Instructions:

#### 1- Run these commands in the terminal:
```sh
python3 -m venv venv

# For macOS/Linux
source venv/bin/activate

# For Windows
source venv/Scripts/activate

pip install Flask
pip show Flask
pip install numpy
pip install scikit-learn==1.3.2
python app.py

# To host the AI model and access it through your local host on port 5001
python app.py
```

#### 2- Check if your file is hosted successfully:
Try this URL in your browser: 
```
http://127.0.0.1:5001
```

#### 3- Send your list to the model using the POST method:
Use this IP in your Flutter app: 
```
http://10.0.2.2:5001/predict
```

## 🌍 API & AI Model
- The application fetches weather data from a weather API.
- The AI model, hosted locally, processes weather data and provides an **outdoor suitability score**.

## 📌 Notes
- Ensure location permissions are enabled on your device.
- The AI model should be running locally before testing weather predictions.

---

🚀 Happy Coding! 😊

