from flask import Flask, request, jsonify
import joblib
import numpy as np

app = Flask(__name__)

# Load the model once when the server starts
with open('xgb_model.pkl', 'rb') as f:
    model = joblib.load(f)

@app.route('/predict', methods=['GET'])
def predict():
    try:
        # Get the JSON data from the request
        data = request.get_json(force=True)
        
        # Check if 'features' key is in the JSON data
        if 'features' not in data:
            return jsonify({'error': 'Missing features key in JSON data'}), 400
        
        # Extract features and ensure it's a list with the correct length
        features = data['features']
        if not isinstance(features, list) or len(features) != 11:
            return jsonify({'error': 'Features must be a list of 11 numeric values'}), 400

        # Convert features to numpy array and reshape for model input
        features = np.array(features).reshape(1, -1)
        
        # Make prediction
        prediction = model.predict(features)
        return jsonify({'prediction': int(prediction[0])})
    
    except Exception as e:
        return jsonify({'error': str(e)}), 500

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5050)