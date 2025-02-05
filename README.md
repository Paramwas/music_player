# Music Player UserInterface 

Inspiration Spotify

This project consists of a **Flutter frontend** and a **Flask backend** for a music player application. The frontend provides a user-friendly interface for users to interact with the music player, while the backend handles the server-side logic, including managing music files, playlists, and more.

## Project Structure

The project is structured as follows:

```
music_player/
├── flutter_frontend/    # Contains the Flutter project for the frontend
├── flask_backend/       # Contains the Flask project for the backend
└── README.md            # This file
```

## Frontend (Flutter)

The frontend of the application is built using **Flutter**, a popular framework for creating natively compiled applications for mobile, web, and desktop from a single codebase. The Flutter app provides the user interface (UI) for the music player, including features such as playing music, viewing playlists, and controlling playback.

### Prerequisites for Frontend

- [Flutter](https://flutter.dev/docs/get-started/install) installed on your machine
- A compatible device/emulator for testing the Flutter app

### Installation for Frontend

1. Clone the repository:
   ```bash
   git clone https://github.com/Paramwas/music_player.git
   cd music_player
   ```

2. Navigate to the `flutter_frontend` directory:
   ```bash
   cd flutter_frontend
   ```

3. Install the Flutter dependencies:
   ```bash
   flutter pub get
   ```

4. Run the app:
   ```bash
   flutter run
   ```

## Backend (Flask)

The backend is built using **Flask**, a lightweight WSGI web application framework in Python. The Flask app handles the server-side logic of the music player, including serving the music files, managing playlists, and handling requests from the frontend.

### Prerequisites for Backend

- [Python 3](https://www.python.org/downloads/)
- [Flask](https://flask.palletsprojects.com/en/2.0.x/) installed in your Python environment
- You can set up a virtual environment to manage dependencies (recommended)

### Installation for Backend

1. Navigate to the `flask_backend` directory:
   ```bash
   cd flask_backend
   ```

2. Install the required Python dependencies:
   ```bash
   pip install -r requirements.txt
   ```

3. Run the Flask app:
   ```bash
   python app.py
   ```

The backend will start running, and it will be ready to handle requests from the Flutter frontend.

## Usage

Once both the frontend and backend are set up and running, you can:

- Start the **Flutter frontend** on your mobile device or emulator to interact with the music player.
- The **Flask backend** will handle all the requests and respond with data related to music files, playlists, and other server-side operations.

## Contributing

Feel free to fork this project and submit issues or pull requests for any improvements, bug fixes, or features you'd like to add. We welcome contributions!

### How to Contribute

1. Fork the repository.
2. Create a new branch for your feature or bug fix:
   ```bash
   git checkout -b feature-name
   ```
3. Make your changes and commit them:
   ```bash
   git commit -am "Description of changes"
   ```
4. Push your branch:
   ```bash
   git push origin feature-name
   ```
5. Create a pull request on GitHub.

## License

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for more details.

---

Thank you for checking out this project! If you have any questions or need help setting it up, feel free to open an issue or contact us.
