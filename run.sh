#!/bin/bash
# run_apps.sh
# Script to start application

mkdir -p logs

# Run Flask app
nohup python3 app.py > logs/flask.log 2>&1 &

# Run Streamlit app
nohup streamlit run streamlit_app.py --server.port 8501 > logs/streamlit.log 2>&1 &

echo "Flask and Streamlit apps started in background."
echo "Logs are available in ./logs/"
