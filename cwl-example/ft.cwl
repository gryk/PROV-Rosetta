cwlVersion: v1.0
class: CommandLineTool
baseCommand: nmrPipe
arguments: [-fn, FT, -ov]
#stdout: output.pipe
inputs: 
  ft_flag:
    type: boolean
    inputBinding:
      prefix: -auto
      position: 1
  ft_input:
    type: File
    inputBinding:
      prefix: -in
      position: 8
  ft_output:
    type: string
    inputBinding:
      prefix: -out
      position: 9

outputs:
  ft_out:
#     type: stdout
    type: File
    outputBinding:
      glob: $(inputs.ft_output)
