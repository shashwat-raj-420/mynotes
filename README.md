mynotes
mynotes is a multi-platform note-taking application built with Flutter. It allows users to securely create, save, and manage their notes in the cloud, ensuring they are synchronized across all their devices.

Features
Secure User Authentication:

User registration with email and password.

User login.

Email verification for new accounts.

Password reset functionality.

Cloud Note Management (CRUD):

Create: Add new notes, which are instantly saved to the cloud.

Read: View all your notes in a clean list, updated in real-time from Firestore.

Update: Edit existing notes with changes saved automatically.

Delete: Remove notes with a confirmation dialog.

Share Notes: Easily share the content of your notes with other apps.

Cross-Platform: A single codebase supports Android, iOS, macOS, Windows, Linux, and Web.

Tech Stack
Framework: Flutter

Programming Language: Dart

Backend & Database: Firebase

Authentication: Firebase Authentication

Database: Cloud Firestore

State Management: BLoC (Business Logic Component)

Getting Started
This project is a starting point for a Flutter application.

Prerequisites
Flutter SDK: Ensure you have the Flutter SDK installed.

Firebase Account: You will need a Firebase project to connect the app to.

Set up Firebase Authentication (Email/Password).

Set up Cloud Firestore.

Firebase CLI: Install the Firebase CLI to configure the project.

Installation & Setup
Clone the repository:

Bash

git clone [your-repository-url]
cd mynotes
Install dependencies:

Bash

flutter pub get
Configure Firebase:

Run firebase login.

Run flutterfire configure and follow the prompts to connect the app to your Firebase project. This will generate the necessary configuration files (like firebase_options.dart).

Run the app:

Bash

flutter run
Project Structure (Simplified)
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
