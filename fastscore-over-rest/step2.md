Add new model to fastscore:

`
fastscore model add increment <<EOF
def action(datum):
  yield datum+1
EOF
`{{execute}}


Validate that model was addedd successfully:

`fastscore model list; fastscore model show increment`{{execute}}

Add REST stream:

`
fastscore stream add rest <<EOF
{
  "Version": "1.2",
  "Encoding": "json",
  "Envelope": null,
  "Loop": false,
  "Transport": "REST"
}
EOF
`{{execute}}

Validate stream was added successfully:

`fastscore stream list; fastscore stream show rest`{{execute}}

In the next step we will score actual data against the model with REST.


