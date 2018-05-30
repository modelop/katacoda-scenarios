FastScore requires at least one model and an associated schema for every data transport. In this scenario, we will deploy our model with one input data transport and one output data transport. 
Each model is deployed in its own FastScore Engine. When we set up FastScore, we initialized 4 FastScore Engines. Let's deploy our python model in engine 1!

`fastscore use engine-1`{{execute}}

`fastscore model load gbm_python`{{execute}}

The engine is now waiting for data transports to send data so that it can produce scores. FastScore supports multiple input and output data transports, but we will be only using one of each. Let's set the transports! 

We will be sending the data through a file and writing the scores to an output file:

`fastscore stream attach file_in 0`{{execute}}

The 0 here is the index of the Engine input slot we are using. See [this documentation](https://opendatagroup.github.io/Product%20Manuals/Multiple%20Input%20and%20Output%20Streams/) for more information on multiple input and output slots.

Let's set our output data stream:

`fastscore stream attach file_out 1`{{execute}}

Now, let's see the scores from the model:

`head -5 ./fastscore-intro/data/output_data.jsons`{{execute}}
