__What is App Engine:__
> App Engine is a fully managed, serverless platform for developing and hosting web applications at scale.

You can hoose from several popular languages, libraries, and frameworks to develop your apps.

* It's made up of single application resource that consists of one or more services.
* each service can use different runtimes to operate with different performance

* provides buil in services and API's like:
  * NoSQL datastores
  * Memcache, load balancing, health checks, 
  * application logging, and a user authentication API that’s common to most applications

* The App Engine application is a top-level container
* It includes the service, version, and instance resources that make up your app

* Each App Engine application includes at least one service, the default service, which can hold many versions, depending on your app's billing status

* The diagram illustrates the hierarchy of an App Engine app running with multiple services. 
* In this diagram,app has 2 services containing multiple versions, and 2 of those versions are actively running on multiple instances:

<img src="https://cloud.google.com/static/appengine/docs/images/modules_hierarchy.svg">


### Instances

* The versions within your services run on one or more instances. 
* By default, App Engine scales your app to match the load. 
* Your apps will scale up the number of instances that are running to provide consistent performance, or scale down to minimize idle instances and reduces costs. 
For more information about instances, see [How Instances are Managed](https://cloud.google.com/appengine/docs/standard/how-instances-are-managed)

## App Engine environments
## 2 types

#### 1. Standard 

* based on container instances running Google's infra.
* Containers are preconfigured with a runtime from supported language's list and version
* 
 
 
#### 2. Flexible
