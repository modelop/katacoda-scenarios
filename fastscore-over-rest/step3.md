Now, let's score some data against using REST transport.

Run the increment model:

`fastscore run increment rest rest`{{execute}}

Validate engine is running:
`fastscore engine inspect`{{execute}}

Inspect streams:
`fastscore stream inspect`{{execute}}

Send data to scoring:
`fastscore model input`{{execute}}

Enter any number and press Enter key twice.

Now, retrieve the results:
`fastscore model output`{{execute}}


cUrl can also be used to submit data for scoring.
