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
      `python3 -m venv .venv ` <br>
      ` source .venv/bin/activate `
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
2) In the Azure portal:
         On the App Services page, select + Create, then select + Web App from the drop-down menu.
3) On the Create Web App page, fill out the form as follows:  
- Resource Group → Select Create new and use a name of *doom-resourcegrp*.  
- Name → name it *doom-webapp* (for simplicity) . This name must be unique across Azure.  
- Runtime stack → Python 3.9.  
- Region → Any Azure region near you.  
- App Service Plan → Under Pricing plan, select Explore pricing plans to select a different App Service plan (choose a free one)  

4) On the main Create Web App page, select the Review + create at the bottom of the screen.  
   This will take you to the Review page. Select Create to create your App Service.

## Deploy DOOM 
After we have created our web app, we can now deploy DOOM to the web app.
### Deployment Steps
There are different ways of deploying the application to the web app.  
Here, we will be using the ZIP Deploy method.  

1) Enable Build Automation
   When deploying a ZIP file of your Python code, you need to set a flag to enable Azure build automation.  
   The build automation will install any necessary requirements and package the application to run on Azure.  
      - On the page for the web app in the Azure portal :  
              - Select Environment variables under the Settings header in the left toolbar to bring up the Application settings  
              - Under Application settings, select New application setting.  
      - Using the dialog, enter a new setting with:  
            - Name → SCM_DO_BUILD_DURING_DEPLOYMENT  
            - Value → true  
      - Select the Save to save your settings.  

2) Create a Zip file of your application  
   - Next, create a ZIP file of your application.  
   - You only need to include components of the application itself.  
   - You do not need to include any files or directories that start with a dot `(.)` such as `.venv `, ` .gitignore`, `.github`, or `.vscode`.  

3) Upload the Zip file to Azure  
   The az webapp deploy command can be used to upload and deploy a zip file to Azure.  
` az webapp deploy \  
    --name doom-webapp \  
    --resource-group doom-resourcegrp \  
    --src-path doom-webapp.zip `

After all the steps have been done, you can launch your app by going to the default domain of your web app.
Congratulations! Now you have successfully ported DOOM on your azure web app.  

> Note that I have skipped the step of setting up a start up script.  
> Because in our scenario, we don't need to do it.  
> But it may be a cruicial step in deploying other types of applications.

If you feel like I have missed out some steps or unclear about my instrusctions, you can refer to [this](https://learn.microsoft.com/en-us/azure/app-service/quickstart-python?tabs=fastapi%2Cwindows%2Cazure-portal%2Czip-deploy%2Cdeploy-instructions-azportal%2Cterminal-bash%2Cdeploy-instructions-zip-azcli#sample-application) link and follow the steps mentioned.  

*Good Luck!* ;)

   
