cwlVersion: v1.0
class: Workflow

############

inputs:
  fid: File
  xZF_size: int
  xzf_outFile: string
  xFT_flag: boolean
  xft_outFile: string
  xps0: float
  xps1: float
  xps_outFile: string
  xext_outFile: string
  tp_outFile: string
  yLP_coeff: int
  yLP_pred: int
  yLP_start: int
  yLP_size: int
  ylp_outFile: string
  yZF_size: int
  yzf_outFile: string
  yFT_flag: boolean
  yft_outFile: string

############

outputs:
  final_output:
    type: File
    outputSource: yft/ft_out
############

steps:

  xzf:
    run: zf.cwl
    in:
      zf_input: fid
      zf_size: xZF_size
      zf_output: xzf_outFile
    out: [zf_out]

  xft:
    run: ft.cwl
    in: 
      ft_flag: xFT_flag
      ft_input: xzf/zf_out
      ft_output: xft_outFile
    out: [ft_out]

  xps:
    run: ps.cwl
    in:
      ps0: xps0
      ps1: xps1
      ps_input: xft/ft_out
      ps_output: xps_outFile
    out: [ps_out]
 
  xextract:
    run: ext.cwl
    in:
      ext_input: xps/ps_out
      ext_output: xext_outFile
    out: [ext_out]
 
  tp:
    run: tp.cwl
    in: 
      tp_input: xextract/ext_out
      tp_output: tp_outFile
    out: [tp_out]

  ylp:
    run: lp.cwl
    in:
      lp_coeff: yLP_coeff
      lp_pred: yLP_pred
      lp_start: yLP_start
      lp_size: yLP_size
      lp_input: tp/tp_out
      lp_output: ylp_outFile
    out: [lp_out]

  yzf:
    run: zf.cwl
    in:
      zf_input: tp/tp_out
      zf_size: yZF_size
      zf_output: yzf_outFile
    out: [zf_out]


  yft:
    run: ft.cwl
    in: 
      ft_flag: yFT_flag
      ft_input: yzf/zf_out
      ft_output: yft_outFile
    out: [ft_out]

