cwlVersion: v1.0
class: CommandLineTool
baseCommand: nmrPipe
arguments: [-fn, EXT, -left, -sw]
#stdout: output.pipe
inputs: 
  ext_input:
    type: File
    inputBinding:
      prefix: -in
      position: 8
  ext_output:
    type: string
    inputBinding:
      prefix: -out
      position: 9

outputs:
  ext_out:
#     type: stdout
    type: File
    outputBinding:
      glob: $(inputs.ext_output)
