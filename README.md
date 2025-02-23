LEOBOT- AI CHATBOT
📌 Features

✅ FastAPI Backend: Handles API requests and responses efficiently.
✅ Groq API: Processes and generates intelligent chatbot responses.
✅ Flutter Frontend: A sleek and responsive UI for user interaction.
✅ Interactive Chat: Engages users with smooth real-time communication.
✅ Easy Deployment: Can be hosted locally or on cloud platforms like Vercel.

🏗️ Tech Stack
>Backend (API Server)
>Python (FastAPI)
>Groq API (LLM for chatbot responses)
>Postman (Testing API endpoints)
>Frontend (User Interface)
>Flutter (Dart)
>Flutter Web (For browser-based chatbot)
>Vercel (Optional, for deployment)

🚀 Installation & Setup
1️⃣ Clone the Repository
git clone https://github.com/your-username/flutter-chatbot-ai.git
cd flutter-chatbot-ai

2️⃣ Backend Setup (FastAPI + Groq)
cd backend
python -m venv venv
source venv/bin/activate  # On Windows use: venv\Scripts\activate
pip install -r requirements.txt
🔹 Set up API keys
Create a .env file in the backend/ directory and add your Groq API key:
GROQ_API_KEY=your_api_key_here
🔹 Run the Backend Server
uvicorn main:app --host 0.0.0.0 --port 8000 --reload
Your FastAPI server will be running at: http://127.0.0.1:8000

3️⃣ Frontend Setup (Flutter)
🔹 Install Flutter Dependencies
cd frontend
flutter pub get
🔹 Run the Flutter Web App
flutter run -d chrome
Your chatbot UI will launch in the browser.

📡 Deployment
🔹 Deploy Backend (FastAPI) on Vercel or Render
Use Vercel or Render to host the FastAPI backend.
Configure environment variables (GROQ_API_KEY).
🔹 Deploy Frontend (Flutter) on Vercel
flutter build web
vercel deploy
Your chatbot will be available at https://your-app.vercel.app

📷 Screenshots
![image](https://github.com/user-attachments/assets/3cf6096f-456b-48d8-b6f8-8510808411b3)
![image](https://github.com/user-attachments/assets/c37e62c0-e38c-4768-96f3-25d7a99ce3b6)

📜 License
This project is open-source under the MIT License.

🙌 Contributions
Feel free to fork this repository and submit pull requests.

📞 Contact
For questions, reach out at salinshain@gmail.com








