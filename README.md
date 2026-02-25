# 📝 Personal Notes App

A secure, user-friendly note-taking application built with SwiftUI and Firebase, offering a personalized and private note management experience.

## 📖 Project Overview

This is a cross-platform iOS/macOS note-taking application that leverages Firebase Authentication and Firestore to provide users with a completely isolated and secure environment for managing their personal notes. Each user's notes are stored independently in Firebase Firestore, ensuring complete privacy and data separation.

## ✨ Key Features

- 🔐 **Secure Authentication**: Email and password-based user authentication using Firebase Auth
- 📱 **User-Isolated Environment**: Each user has their own private note space - notes are never shared between users
- ➕ **Create Notes**: Add new notes with custom titles and content
- 📋 **View Notes**: Browse through all your notes in an organized list view
- 🗑️ **Delete Notes**: Remove unwanted notes with a simple button click
- ✏️ **Edit Notes**: Swipe actions for quick note editing
- 🔄 **Real-time Sync**: Notes are synchronized in real-time across devices using Firestore
- 🚪 **Sign Out**: Secure logout functionality to protect your data

## 🛠️ Technology Stack

- **Frontend**: SwiftUI
- **Backend**: Firebase
  - Firebase Authentication (User Management)
  - Cloud Firestore (Database)
- **Language**: Swift
- **Architecture**: MVVM (Model-View-ViewModel)

## 📹 Demo Video

<!-- Replace the URL below with your actual video link -->
[![Watch Demo](https://img.shields.io/badge/▶-Watch%20Demo-red?style=for-the-badge&logo=youtube)](YOUR_VIDEO_URL_HERE)

> **Note**: Add your video URL by replacing `YOUR_VIDEO_URL_HERE` with the actual link to your demo video (YouTube, Vimeo, etc.)

## 📸 Screenshots

<details>
<summary>Click to view all screenshots</summary>

### Authentication Screen
![Screenshot 1](Screenshots/Screenshot%202026-02-24%20135933.png)

### Sign In View
![Screenshot 2](Screenshots/Screenshot%202026-02-24%20135953.png)

### Notes List View
![Screenshot 3](Screenshots/Screenshot%202026-02-24%20140050.png)

### Add New Note
![Screenshot 4](Screenshots/Screenshot%202026-02-24%20140059.png)

### Note Management
![Screenshot 5](Screenshots/Screenshot%202026-02-24%20140108.png)

### Notes Overview
![Screenshot 6](Screenshots/Screenshot%202026-02-24%20140115.png)

### Delete Functionality
![Screenshot 7](Screenshots/Screenshot%202026-02-24%20140123.png)

### User Interface
![Screenshot 8](Screenshots/Screenshot%202026-02-24%20140130.png)

</details>

## 🏗️ Project Structure

```
lab4/
├── lab4/
│   ├── lab4App.swift           # Main app entry point
│   ├── AuthView.swift           # Authentication UI
│   ├── AuthViewModel.swift      # Authentication logic
│   ├── FContentView.swift       # Main notes view
│   ├── AddNoteView.swift        # Add/Edit note view
│   ├── FirestoreManager.swift   # Firestore operations
│   ├── Note.swift               # Note model
│   └── GoogleService-Info.plist # Firebase configuration
└── Screenshots/                 # App screenshots
```

## 🔑 Key Components

### Authentication System
- **AuthView**: Handles user sign-in and sign-up interface
- **AuthViewModel**: Manages authentication state and Firebase Auth operations

### Data Management
- **FirestoreManager**: Handles all Firestore CRUD operations
  - User-specific data isolation (`users/{uid}/notes`)
  - Real-time note synchronization
  - Secure data operations

### Models
- **Note**: Codable model with Firestore integration using `@DocumentID`

## 🚀 Getting Started

### Prerequisites
- Xcode 14.0 or later
- iOS 16.0+ / macOS 13.0+
- Firebase account

### Installation

1. **Clone the repository**
   ```bash
   git clone <your-repository-url>
   cd 2107037/lab4
   ```

2. **Configure Firebase**
   - Create a new Firebase project at [Firebase Console](https://console.firebase.google.com/)
   - Enable Email/Password authentication
   - Create a Cloud Firestore database
   - Download `GoogleService-Info.plist` and add it to the project

3. **Install Dependencies**
   - Open `2107037.xcodeproj` in Xcode
   - Dependencies will be resolved automatically via Swift Package Manager

4. **Run the App**
   - Select your target device/simulator
   - Press `Cmd + R` to build and run

## 🔒 Privacy & Security

- **User Isolation**: Notes are stored in user-specific Firestore collections (`users/{uid}/notes`)
- **Secure Authentication**: Firebase Authentication handles password security
- **No Cross-User Access**: Users can only access their own notes
- **Real-time Security Rules**: Firestore security rules ensure data privacy

## 👨‍💻 Development

### Firebase Firestore Structure
```
users/
  └── {userId}/
      └── notes/
          ├── {noteId1}
          │   ├── title: String
          │   └── content: String
          ├── {noteId2}
          │   ├── title: String
          │   └── content: String
          └── ...
```

## 📝 License

This project was created for educational purposes.

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

---

**Student ID**: 2107037

Made with ❤️ using SwiftUI and Firebase
