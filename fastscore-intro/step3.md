It is best practice to separate the model from how the data will be transported in and out of the model. 

Let's take a look at the different transports that will used in this scenario!

In the testing phase, a static file may be used to ensure the models execute properly in FastScore. 

Let's look at the first row of data this model will consume (this example file only contains 5 rows of data):

`head -1 ./katacoda/fastscore-intro/data/input_data.jsons`{{execute}}

If the data structure does not match the input schema, we will receive an error. This ensures that the data structure expectations are met at all times.

Let's look at the data transport to feed data into the model from the file:

`fastscore stream show file_in`{{execute}}

The data transports specify where the data is located, how to move the data, and how the data is encoded. 

This scenario will also switch the model from batch scoring to streaming by changing the data transports from a file to using Kafka (used for building real-time data pipelines).
Let's look at the kafka transport:

`fastscore stream show kafka_in`{{execute}}
