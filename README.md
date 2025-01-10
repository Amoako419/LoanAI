# Loan AI App

## Overview
Loan AI App is a Flutter-based mobile application that leverages machine learning to predict whether a customer qualifies for a loan or not. The app uses a Flask-based API to interact with a pre-trained ML model, ensuring seamless integration between the front-end interface and back-end prediction services.

---

## Features
- **Intuitive User Interface**: Built with Flutter, providing a smooth and responsive user experience.
- **AI-Powered Predictions**: Utilizes a machine learning model to assess loan eligibility.
- **API Integration**: Flask is used to host the ML model, which the app communicates with via RESTful API.
- **Cross-Platform Compatibility**: Runs on both Android and iOS devices.

---

## Technologies Used

### Frontend:
- Flutter (Dart)

### Backend:
- Flask (Python)

### Machine Learning:
- Scikit-learn (or other ML libraries used for the model)

### API:
- RESTful API endpoints

---

## Installation

### Prerequisites
- Flutter SDK installed
- Python (3.8 or higher)
- Pip package manager
- Virtual environment for Python (optional but recommended)

### Setup Steps

#### 1. Clone the Repository
```bash
git clone https://github.com/amoako419/loan-ai-app.git
cd loan-ai-app
```

#### 2. Backend Setup

1. Navigate to the `backend` directory:
    ```bash
    cd backend
    ```

2. Create and activate a virtual environment (optional):
    ```bash
    python3 -m venv venv
    source venv/bin/activate  # On Windows, use `venv\Scripts\activate`
    ```

3. Install dependencies:
    ```bash
    pip install -r requirements.txt
    ```

4. Run the Flask server:
    ```bash
    python app.py
    ```
   The API will be available at `http://127.0.0.1:5000/`.

#### 3. Frontend Setup

1. Navigate back to the project root:
    ```bash
    cd ../
    ```

2. Install Flutter dependencies:
    ```bash
    flutter pub get
    ```

3. Run the app:
    ```bash
    flutter run
    ```

---

## API Endpoints

### Base URL
`http://127.0.0.1:5000/`

### Endpoints

1. **Predict Loan Eligibility**
   - **URL**: `/predict`
   - **Method**: POST
   - **Request Body**: JSON object containing customer details (e.g., income, credit score, etc.)
   - **Response**: JSON object with prediction result (e.g., `eligible: true/false`)

---

## How It Works
1. User enters loan application details into the Flutter app.
2. The app sends the data to the Flask API.
3. Flask API processes the data using the ML model.
4. Prediction results are sent back to the app and displayed to the user.

---

## Future Enhancements
- Add more advanced ML models for better accuracy.
- Implement secure authentication for API access.
- Enhance UI/UX with additional features.
- Deploy the Flask API to a cloud service for scalability.

---

## Contributing
1. Fork the repository.
2. Create a feature branch (`git checkout -b feature-name`).
3. Commit your changes (`git commit -m 'Add feature'`).
4. Push to the branch (`git push origin feature-name`).
5. Open a Pull Request.

---

## License
This project is licensed under the MIT License. See the LICENSE file for more details.

---




