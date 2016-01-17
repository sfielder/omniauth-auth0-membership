#OnmiAuth+ Auth0 + Ruby on Rails Membership Seed

This example is deployed at Heroku at https://aaa-membership-carolinas.herokuapp.com/

#Create a Salesforce Developer org and Install the Salesforce Appexchange Package

Prior to installing the app on Heroku, sign up for a Salesforce developer account at https://developer.salesforce.com/

Once you have logged into your Salesforce Developer org, install the following Appexchange Package:
https://login.salesforce.com/packaging/installPackage.apexp?p0=04t360000009NkX

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
