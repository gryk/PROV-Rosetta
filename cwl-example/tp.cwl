cwlVersion: v1.0
class: CommandLineTool
baseCommand: nmrPipe
arguments: [-fn, TP, -ov]
#stdout: output.pipe
inputs: 
  tp_input:
    type: File
    inputBinding:
      prefix: -in
      position: 8
  tp_output:
    type: string
    inputBinding:
      prefix: -out
      position: 9

outputs:
  tp_out:
#     type: stdout
    type: File
    outputBinding:
      glob: $(inputs.tp_output)
