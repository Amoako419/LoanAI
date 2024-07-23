from flask import Flask, request, jsonify
import joblib
import numpy as np

app = Flask(__name__)

with open('xgb_model.pkl', 'rb') as f:
    model = joblib.load(f)

@app.route('/predict', methods=['POST'])
def predict():
    try:
        data = request.get_json(force=True)
        if 'features' not in data:
            return jsonify({'error': 'Missing features key in JSON data'}), 400
        
        features = data['features']
        if not isinstance(features, list) or len(features) != 11:
            return jsonify({'error': 'Features must be a list of 11 numeric values'}), 400
        
        features = np.array(features).reshape(1, -1)
        dmatrix = xgb.DMatrix(features)
        prediction = model.predict(dmatrix)
        return jsonify({'prediction': int(prediction[0])})
    
    except Exception as e:
        return jsonify({'error': str(e)}), 500

if __name__ == '__main__':
    app.run(debug=True)