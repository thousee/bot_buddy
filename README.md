# BotBuddy

An AI-powered chat application built with Flutter using the BLoC pattern.

## Folder Structure

lib/  
├── chat/  
│ ├── bloc/ # BLoC (Business Logic Component) for managing chat states  
│ │ ├── chat_bloc.dart # Main BLoC class handling events and states  
│ │ ├── chat_event.dart # Defines various chat-related events  
│ │ └── chat_state.dart # Defines different chat states  
│ │  
│ ├── models/ # Data models for the chat feature  
│ │ └── chat_message.dart # Model for chat messages  
│ │  
│ ├── repository/ # Handles API calls and data fetching  
│ │ └── chat_repository.dart # Repository to interact with OpenAI API  
│ │  
│ ├── ui/ # UI components/screens  
│ │ └── chat_screen.dart # Chat UI screen  
│  
└── main.dart # Entry point of the application

## Features

- **Modern UI:** Clean, modern, and responsive chat interface.
- **State Management:** Implemented using the BLoC pattern for a clear separation between business logic and UI.
- **Generative AI Integration:** Powered by Google Generative AI to provide intelligent responses.
- **Customizable Theme:** Updated theme with bold colors and smooth animations.

## Getting Started

1. **Install Flutter:** Ensure you have Flutter installed. You can find installation instructions in the [Flutter documentation](https://docs.flutter.dev/).
2. **Install Dependencies:** Run the following command in the project directory:
   ```bash
   flutter pub get
   ```
3. Get your API key from Google Cloud and initialize the Gemini 1.5 Flash model:
   Replace with your API Key

screenshots:
![Generate API Key](Generate_API_Key.gif)
![UI screen](UI_Screen.mp4)

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
