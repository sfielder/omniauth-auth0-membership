#OnmiAuth+ Auth0 + Ruby on Rails Membership Seed

This example is deployed at Heroku at https://aaa-membership-carolinas.herokuapp.com/

#Create a Salesforce Developer org and Install the Salesforce Appexchange Package

Prior to installing the app on Heroku, sign up for a Salesforce developer account at https://developer.salesforce.com/

Once you have logged into your Salesforce Developer org, install the following Appexchange Package:
https://login.salesforce.com/packaging/installPackage.apexp?p0=04t360000009Uga

#Install the App via the Heroku Button

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

In order to run the example you need to have ruby installed.

You also need to set the ClientSecret, ClientId, Domain and CallbackURL for your Auth0 app as enviroment variables with the following names respectively: AUTH0_CLIENT_SECRET, AUTH0_CLIENT_ID, AUTH0_DOMAIN and AUTH0_CALLBACK_URL.

For that, if you just create a file named .env in the directory and set the values like the following, the app will just work:

````bash
# .env file
AUTH0_CLIENT_SECRET=myCoolSecret
AUTH0_CLIENT_ID=myCoolClientId
AUTH0_DOMAIN=samples.auth0.com
AUTH0_CALLBACK_URL=http://localhost:3000/auth/auth0/callback
````
Once you've set those 4 enviroment variables, just run `rails s` and try calling [http://localhost:3000/](http://localhost:3000/)

If you have the Heroku Local Config utility installed (https://github.com/ddollar/heroku-config) you can use the following to create the .env file
````bash
heroku config:pull --overwrite
````

#Configure Heroku Connect Mapping

Once you have installed the app, the final step is to configure Heroku Connect.

To import the Heroku Connect mapping (membership-heroku-connect-mapping.json), please follow the below:

````bash
If you want to synchronize data from a new production or a refreshed sandbox organization you will need to:
Export your current configuration to a JSON file.

Navigate to the Settings tab, choose Import/Export Configuration, click the Export button and then on the confirmation page click Export to download the file.

Remove and re-provision the Heroku Connect add-on authenticating to the new Salesforce organization.

Import the JSON configuration file.

Navigate to the Settings tab, choose Import/Export Configuration, click the Import button and then click Choose file to locate the file to upload. Click the Upload button to begin the import.

On successful completion of the import Heroku Connect will begin syncing data from your new Salesforce organization into the database.
````
