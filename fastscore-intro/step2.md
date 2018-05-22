Our models expect to receive very specific data fields that have restrictions on the data types. To ensure data being consumed by the model is valid, we will associate data schemas for the input data and for the data produced by the model. 

Let's view the data schemas that our models need!

`fastscore schema show gbm_input`{{execute}}

This schema contains a list if specific attributes that the model expects in order to produce a score.

Similarly, the output data is designed to have a specific structure. Let's look at the output schema:

`fastscore schema show gbm_output`{{execute}}

Since the model is just producing one number, a double, between -3 and 3, this schema is pretty simple.
