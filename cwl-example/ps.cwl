cwlVersion: v1.0
class: CommandLineTool
baseCommand: nmrPipe
arguments: [-fn, PS, -ov, -di]
#stdout: output.pipe
inputs: 
  ps0:
    type: float
    inputBinding:
      prefix: -p0
      position: 1
  ps1:
    type: float
    inputBinding:
      prefix: -p1
      position: 1
  ps_input:
    type: File
    inputBinding:
      prefix: -in
      position: 8
  ps_output:
    type: string
    inputBinding:
      prefix: -out
      position: 9

outputs:
  ps_out:
#     type: stdout
    type: File
    outputBinding:
      glob: $(inputs.ps_output)
