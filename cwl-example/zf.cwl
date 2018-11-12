cwlVersion: v1.0
class: CommandLineTool
baseCommand: nmrPipe
arguments: [-fn, ZF, -ov]
#stdout: output.pipe
inputs: 
  zf_size:
    type: int
    inputBinding:
      prefix: -size
      position: 1
  zf_input:
    type: File
    inputBinding:
      prefix: -in
      position: 8
  zf_output:
    type: string
    inputBinding:
      prefix: -out
      position: 9

outputs:
  zf_out:
#     type: stdout
    type: File
    outputBinding:
      glob: $(inputs.zf_output)
