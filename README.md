# doom-webapp
This is the repo of the files required for deploying Classic DOOM Ultimate to Azure Web Apps

# Pre-requisits 
-WSL Ubuntu <br>
-Azure subscription (student preferably because it's free)<br>
-A good internet connection <br>
-PC (Even a potato PC can work DOOM) <br>

# To Run Locally
### NOTE : THIS VERSION DOES NOT RUN ON MOBILE (ANDROID, IOS) IT CAN ONLY RUN ON PC(WINDOWS/MAC) 
If you want to run the game on your browser locally first before deploying to the Web App, You can do so through the following steps:

1) Open Terminal with administrator
2) Open Ubuntu terminal
3) Go to the application folder: <br>
      ` cd doom-webapp `
4) Create a virtual environment for the app:<br>
      `python3 -m venv .venv <br>
       source .venv/bin/activate `
5) Install the dependencies:<br>
      `pip install -r requirements.txt`
6) Run the app:<br>
      ` python app.py `
7) Open in Browser:<br>
   Go to ` http://localhost:5000 `

# Deployment 
Now that we have tested the game functionality locally, we can proceed to upload the game to our Azure Web App
For sake of simplicity, we will use azure portal as much as possible; but there are some instances that we will have to use CLI 

## Firstly, we will create a web app in Azure
1) Sign in to the [Azure portal](https://portal.azure.com/) and follow these steps to create your Azure App Service resources.
