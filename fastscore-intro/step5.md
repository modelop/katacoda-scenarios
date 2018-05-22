Let's detach the file data transport from the engine and attach the kafka data transport to turn it into a streaming model! We will also produce the score and send them over kafka.

`fastscore stream detach 0`{{execute}} 

`fastscore stream detach 1`{{execute}} 

`fastscore stream attach kafka_in 0`{{execute}} 

`fastscore stream attach kafka_out 1`{{execute}} 

We are going to use a utility called kafkaesq that will send data row by row from a specified file over a kafka topic that we will use as the input of the model. This utility will also receive data over the output topic and write the data to the console. 
Let's score the python model! We will specify the file location, the input topic name, and the output topic name (cleverly named "input" and "output").

`./kafkaesq --input-file data/input_data.jsons input output`{{execute}}
