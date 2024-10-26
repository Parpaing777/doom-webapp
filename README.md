# doom-webapp
This is the repo of the files required for deploying Classic DOOM Ultimate to Azure Web Apps

# Pre-requisits 
-WSL Ubuntu
-Azure subscription (student preferably because it's free)
-A good internet connection 
-PC (Even a potato PC can work DOOM)

# To Run Locally
### NOTE : THIS VERSION DOES NOT RUN ON MOBILE (ANDROID, IOS) IT CAN ONLY RUN ON PC(WINDOWS/MAC) ###
If you want to run the game on your browser locally first before deploying to the Web App, You can do so through the following steps:

1) Open Terminal with administrator
2) Open Ubuntu terminal
3) Go to the application folder: 
      " cd doom-webapp "
4) Create a virtual environment for the app:
      "python3 -m venv .venv \
       source .venv/bin/activate "
5) Install the dependencies:
      "pip install -r requirements.txt"
6) Run the app:
      " python app.py "
7) Open in Browser:
   Go to " http://localhost:5000 "
