__What is cloud Run:__

* Cloud Run is a managed compute platform that enables you to run stateless containers that are invocable via HTTP requests. 

* Cloud Run is serverless: it abstracts away all infrastructure management, so you can focus on what matters most 
  —building great applications.

* Cloud Run is built from Knative, letting you choose to run your containers either fully managed with Cloud Run,
  or in your Google Kubernetes Engine cluster with Cloud Run on GKE


__Exercise:__

1. Enable the Cloud Run API.

2. Create a simple Node.js application that can be deployed as a serverless, stateless container.

3. Containerize your application and upload to Container Registry (now called "Artifact Registry.")

4. Deploy a containerized application on Cloud Run.

5. Delete unneeded images to avoid incurring extra storage charges.


### Activate Google Cloud Shell

* Google Cloud Shell is a virtual machine that is loaded with development tools. It offers a persistent 5GB home directory and runs on
   the Google Cloud.

1. In Cloud console, on the top right toolbar, click the Open Cloud Shell button.

<img src="https://cdn.qwiklabs.com/qPPX1Yyw%2B45zwCK6k0oSVRZulauNxdnRAsLEZTp7WsU%3D">

2. Click Continue.

It takes a few moments to provision and connect to the environment. When you are connected, you are already authenticated, and the project is set to your PROJECT_ID. For example:

<img src="https://cdn.qwiklabs.com/hmMK0W41Txk%2B20bQyuDP9g60vCdBajIS%2B52iI2f4bYk%3D">


