Now, let's score some data against using REST transport.

Run the increment model:

`fastscore run increment rest rest`{{execute}}

Validate engine is running:
`fastscore engine inspect`{{execute}}

Inspect streams:
`fastscore stream inspect`{{execute}}

Send data to scoring:
`fastscore model input`{{execute}}

Type any integer number into Terminal window and press Enter key *twice*. For example:

`
14

`{{copy}}

Now, retrieve the result:
`fastscore model output`{{execute}}

You should see 15. You can experiment with "fastscore model input" and type other inputs.

cUrl can also be used to submit data for scoring.
