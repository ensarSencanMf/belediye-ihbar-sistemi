@echo off
rem Windows batch script to run the FastAPI backend server
rem with automatic virtual environment setup and dependency installation

echo Setting up virtual environment...
python -m venv venv
call venv\Scripts\activate

echo Installing dependencies...
pip install -r requirements.txt

echo Starting FastAPI server...
uvicorn main:app --reload