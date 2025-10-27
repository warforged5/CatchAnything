# CatchAnything

CatchAnything is a Flutter application that allows users to capture real-world objects and turn them into collectible creatures. The app uses the Gemini API to generate creature data based on user input, and Firebase to store the captured creatures.

## Features

*   **Capture Creatures:** Capture real-world objects and turn them into unique creatures.
*   **Creature Collection:** View your collection of captured creatures.
*   **Battle System:** Battle your creatures against other players or AI opponents (coming soon).

## Getting Started

To get started with the app, you will need to have Flutter installed. You will also need to create a Firebase project and configure it for the app. Finally, you will need to get an API key for the Gemini API.

1.  Clone the repository:

    ```
    git clone https://github.com/your-username/catch_anything.git
    ```

2.  Install the dependencies:

    ```
    flutter pub get
    ```

3.  Configure Firebase for the app. You will need to add your `google-services.json` file to the `android/app` directory and your `GoogleService-Info.plist` file to the `ios/Runner` directory.

4.  Set your Gemini API key in `lib/src/presentation/screens/capture_screen.dart`:

    ```dart
    creatureDatasource: GeminiCreatureDatasource(apiKey: 'YOUR_API_KEY'),
    ```

5.  Run the app:

    ```
    flutter run
    ```
