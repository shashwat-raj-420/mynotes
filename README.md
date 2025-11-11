# 📝 MyNotes — Multi-Platform Note-Taking App

**MyNotes** is a sleek, cloud-synced, and secure note-taking application built with **Flutter**.  
It empowers users to **create, edit, and manage notes effortlessly** — all synced in real-time across **Android, iOS, Web, and Desktop** platforms.

---

## 🚀 Features

### 🔐 Secure User Authentication
- ✅ User registration with **Email & Password**  
- 🔑 Login & Logout functionality  
- 📧 **Email verification** for new users  
- 🔁 **Password reset** through email  

---

### ☁️ Cloud Note Management (CRUD)
- 🆕 **Create**: Add new notes, instantly saved to the cloud  
- 👀 **Read**: View notes in a clean, real-time synced list (via Firestore)  
- ✏️ **Update**: Edit notes with automatic cloud updates  
- 🗑️ **Delete**: Remove notes with confirmation  
- 🔗 **Share Notes**: Easily share note content with other apps  

---

### 🌍 Cross-Platform Support
- 📱 Android  
- 🍎 iOS  
- 💻 macOS & Windows  
- 🐧 Linux  
- 🌐 Web  

Built with a **single Flutter codebase** — consistent experience everywhere!

---

## 🧠 Tech Stack

| Component | Technology Used |
|------------|------------------|
| **Framework** | Flutter |
| **Language** | Dart |
| **Backend** | Firebase |
| **Authentication** | Firebase Authentication |
| **Database** | Cloud Firestore |
| **State Management** | BLoC (Business Logic Component) |

---

## ⚙️ Getting Started

### 🧩 Prerequisites
- Flutter SDK installed → [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)  
- Firebase account & project  
  - Enable **Email/Password Authentication**
  - Set up **Cloud Firestore**
- Firebase CLI installed → [Install Firebase CLI](https://firebase.google.com/docs/cli)

---

### 🪜 Installation & Setup

```bash
# Clone the repository
git clone https://github.com/abesh5405s/NoteApp.git
cd mynotes

# Install dependencies
flutter pub get

# Configure Firebase
firebase login
flutterfire configure   # Follow prompts to link Firebase project

# Run the app
flutter run

##Structure

lib/
├── services/
│   ├── auth/         # Handles all authentication logic (Firebase, BLoC)
│   │   ├── bloc/
│   │   ├── auth_provider.dart
│   │   └── firebase_auth_provider.dart
│   └── cloud/        # Handles cloud database logic (Firestore)
│       ├── cloud_note.dart
│       ├── cloud_storage_constants.dart
│       └── firebase_cloud_storage.dart
├── views/
│   ├── notes/        # Widgets for creating and viewing notes
│   │   ├── create_update_notes_view.dart
│   │   ├── notes_list_view.dart
│   │   └── notes_view.dart
│   ├── forgot_password_view.dart
│   ├── login_view.dart
│   ├── register_view.dart
│   └── verify_email_view.dart
└── main.dart         # App entry point, handles auth state routing
