cwlVersion: v1.0
class: CommandLineTool
baseCommand: nmrPipe
arguments: [-fn, LP, -ov, -fb, -after, -fix, -fixMode]
#stdout: output.pipe
inputs: 
  lp_coeff:
    type: int
    inputBinding:
      prefix: -ord
      position: 3
  lp_pred:
    type: int
    inputBinding:
      prefix: -pred
      position: 4
  lp_start:
    type: int
    inputBinding:
      prefix: -x1
      position: 6
  lp_size:
    type: int
    inputBinding:
      prefix: -xn
      position: 7
  lp_input:
    type: File
    inputBinding:
      prefix: -in
      position: 8
  lp_output:
    type: string
    inputBinding:
      prefix: -out
      position: 9

outputs:
  lp_out:
#     type: stdout
    type: File
    outputBinding:
      glob: $(inputs.lp_output)
