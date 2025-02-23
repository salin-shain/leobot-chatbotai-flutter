LEOBOT- AI CHATBOT<br>
📌 Features<br>
<br>
✅ FastAPI Backend: Handles API requests and responses efficiently.<br>
✅ Groq API: Processes and generates intelligent chatbot responses.<br>
✅ Flutter Frontend: A sleek and responsive UI for user interaction.<br>
✅ Interactive Chat: Engages users with smooth real-time communication.<br>
✅ Easy Deployment: Can be hosted locally or on cloud platforms like Vercel.<br>
<br>
🏗️ Tech Stack<br>
>Backend (API Server)<br>
>Python (FastAPI)<br>
>Groq API (LLM for chatbot responses)<br>
>Postman (Testing API endpoints)<br>
>Frontend (User Interface)<br>
>Flutter (Dart)<br>
>Flutter Web (For browser-based chatbot)<br>
>Vercel (Optional, for deployment)<br>
<br>
🚀 Installation & Setup<br>
1️⃣ Clone the Repository<br>
git clone https://github.com/your-username/flutter-chatbot-ai.git<br>
cd flutter-chatbot-ai<br>
<br>
2️⃣ Backend Setup (FastAPI + Groq)<br>
cd backend<br>
python -m venv venv<br>
source venv/bin/activate  # On Windows use: venv\Scripts\activate<br>
pip install -r requirements.txt<br>
🔹 Set up API keys<br>
Create a .env file in the backend/ directory and add your Groq API key:<br>
GROQ_API_KEY=your_api_key_here<br>
🔹 Run the Backend Server<br>
uvicorn main:app --host 0.0.0.0 --port 8000 --reload<br>
Your FastAPI server will be running at: http://127.0.0.1:8000<br>
<br>
3️⃣ Frontend Setup (Flutter)<br>
🔹 Install Flutter Dependencies<br>
cd frontend<br>
flutter pub get<br>
🔹 Run the Flutter Web App<br>
flutter run -d chrome<br>
Your chatbot UI will launch in the browser.<br>
<br>
📡 Deployment<br>
🔹 Deploy Backend (FastAPI) on Vercel or Render<br>
Use Vercel or Render to host the FastAPI backend.<br>
Configure environment variables (GROQ_API_KEY).<br>
🔹 Deploy Frontend (Flutter) on Vercel<br>
flutter build web<br>
vercel deploy<br>
Your chatbot will be available at https://your-app.vercel.app<br>
<br>
📷 Screenshots<br>
![image](https://github.com/user-attachments/assets/3cf6096f-456b-48d8-b6f8-8510808411b3)     <br>
![image](https://github.com/user-attachments/assets/c37e62c0-e38c-4768-96f3-25d7a99ce3b6)    <br>
<br>
📜 License<br>
This project is open-source under the MIT License.<br>
<br>
🙌 Contributions<br>
Feel free to fork this repository and submit pull requests.<br>
<br>
📞 Contact<br>
For questions, reach out at salinshain@gmail.com<br>
