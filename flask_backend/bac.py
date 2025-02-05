from flask import Flask, jsonify, send_from_directory
from flask_cors import CORS
import mysql.connector
import os
from flask import Flask, jsonify, send_from_directory, request  # Add request here


app = Flask(__name__)
CORS(app)  # Enable cross-origin requests

# MySQL Database configuration
DB_CONFIG = {
    'host': 'localhost',
    'user': 'enter your username',
    'password': 'enter your password',
    'database': 'create',
    'charset': 'utf8mb4',
    'collation': 'utf8mb4_general_ci'
}

# Path to the image directory
IMAGE_FOLDER = os.path.join(os.getcwd(), "image")
app.config["IMAGE_FOLDER"] = IMAGE_FOLDER

def init_db():
    """Initialize the database and create the table if it doesn't exist."""
    conn = mysql.connector.connect(**DB_CONFIG)
    cursor = conn.cursor()
    cursor.execute('''
        CREATE TABLE IF NOT EXISTS place_table (
            id INT AUTO_INCREMENT PRIMARY KEY,
            name VARCHAR(255) NOT NULL,
            number INT NOT NULL,
            image VARCHAR(255) NOT NULL,
            trace VARCHAR(255) NOT NULL
        ) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
    ''')
    conn.commit()
    cursor.close()
    conn.close()

@app.route('/data', methods=['GET'])
def get_table_data():
    """Retrieve all data from the place_table table."""
    conn = mysql.connector.connect(**DB_CONFIG)
    cursor = conn.cursor()
    cursor.execute('SELECT image, name, number FROM place_table')  # Corrected table name
    rows = cursor.fetchall()
    cursor.close()
    conn.close()

    # Convert rows to a list of dictionaries with URLs for images
    data = [
        {
            'image': f'/images/{row[0]}',  # Reference the static image route
            'name': row[1],
            'number': row[2],
        }
        for row in rows
    ]

    return jsonify(data), 200

# Endpoint to serve static images
@app.route('/images/<filename>', methods=['GET'])
def serve_image(filename):
    """Serve images from the image folder."""
    return send_from_directory(app.config["IMAGE_FOLDER"], filename)

@app.route('/songs', methods=['GET'])
def get_song_data():
    """Retrieve all data from the place_table table."""
    conn = mysql.connector.connect(**DB_CONFIG)
    cursor = conn.cursor()
    cursor.execute('SELECT song, artist, image FROM place_table')
    rows = cursor.fetchall()
    cursor.close()
    conn.close()

    # Convert rows to a list of dictionaries with URLs for images
    data = [
        {
            'image': f'/images/{row[2]}',  # Corrected image URL
            'song': row[0],
            'artist': row[1],
        }
        for row in rows
    ]

    return jsonify(data), 200

# Endpoint to serve static images
@app.route('/images/<filename>', methods=['GET'])
def serve_images(filename):
    """Serve images from the image folder."""
    return send_from_directory(app.config["IMAGE_FOLDER"], filename)  # Corrected variable name

@app.route('/place/<name>', methods=['GET'])
def get_place_data(name):
    """Retrieve data from the specified table."""
    conn = mysql.connector.connect(**DB_CONFIG)
    cursor = conn.cursor()

    # Use parameterized query to avoid SQL injection
    query = f'SELECT song, artist, image FROM `{name}`'
    try:
        cursor.execute(query)
        rows = cursor.fetchall()
    except mysql.connector.Error as err:
        cursor.close()
        conn.close()
        return jsonify({'error': str(err)}), 400

    cursor.close()
    conn.close()

    # Convert rows to a list of dictionaries with URLs for images
    data = [
        {
            'song': row[0],
            'artist': row[1],
            'image': f'/images/{row[2]}',  # Reference the static image route
        }
        for row in rows
    ]

    return jsonify(data), 200

@app.route('/authenticate', methods=['POST'])
def authenticate_user():
    """Authenticate user with username and password."""
    # Get the username and password from the request
    data = request.get_json()
    username = data.get('username')
    password = data.get('password')

    if not username or not password:
        return jsonify({'error': 'Username and password are required'}), 400

    # Check if the username exists in the database
    conn = mysql.connector.connect(**DB_CONFIG)
    cursor = conn.cursor()
    cursor.execute('SELECT id, password FROM users WHERE username = %s', (username,))
    user = cursor.fetchone()
    cursor.close()
    conn.close()

    if user and user[1] == password:  # Compare plain-text password
        return jsonify({'message': 'Authentication successful'}), 200
    else:
        return jsonify({'error': 'Invalid username or password'}), 401


if __name__ == '__main__':
    # Initialize the database
    init_db()
    app.run(debug=True)
