Models are created in a variety of creation environments like R Studio or Jupyter Notebooks. Those models most likely were trained and created in a separate environment than they will run in production. FastScore enables data science teams to test, deploy, and monitor their models in a way that is portable and scalable. This scenario will introduce all of the components needed to deploy a model using FastScore after it has been created.

Let's start with the python model we will be using in this example.

This model is stored in a MySQL database which is the default backing store configured for FastScore. It could just as easily be stored in a code repository that FastScore Manage connects to and exposes the model to be used in a deployment configuration.

This model is specifically a scoring model. It uses the weights created during the training phase to predict a score off of the attributions in the incoming data. 

Let's take a look at our model:

`fastscore model show gbm_python`{{execute}}

There are a few things to notice here:
1. The model references data schemas at the top using smart comments called "gbm_input" and "gbm_output", which we will discuss in the next step
2. The begin function performs preparation work for the execution of the model which will load any custom libraries and/or prepare the model coefficients (or weights) to be used
3. The action function uses a specified method to calculate a score
