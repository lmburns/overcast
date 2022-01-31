" =============================================================================
" URL: https://github.com/sainnhe/gruvbox-material
" Filename: autoload/airline/themes/overcast.vim
" Author: sainnhe | lmburns
" Email: sainnhe@gmail.com | burnsac@me.com
" License: MIT License
" =============================================================================

" Initialization: {{{
let s:colors = {
      \ 'bg0'             : ['#21272b',   '236'],
      \ 'bg1'             : ['#242c30',   '237'],
      \ 'bg2'             : ['#363e44',   '235'],
      \ 'bg3'             : ['#3a4248',   '237'],
      \ 'bg4'             : ['#445055',   '237'],
      \ 'bg5'             : ['#4c555b',   '239'],
      \ 'fg0'             : ['#d4be98',   '223'],
      \ 'fg1'             : ['#D3C6AA',   '225'],
      \ 'fg3'             : ['#515c63',    '17'],
      \ 'red'             : ['#c74e72',   '255'],
      \ 'magenta'         : ['#ba6c86',   '255'],
      \ 'orange'          : ['#e67e32',   '255'],
      \ 'green'           : ['#9fb846',   '142'],
      \ 'yellow'          : ['#e3a412',   '214'],
      \ 'aqua'            : ['#75bd94',   '108'],
      \ 'blue'            : ['#70b2cf',   '162'],
      \ 'purple'          : ['#9583c9',   '176'],
      \ 'black'           : ['#323a40',    '0'],
      \ 'bg_red'          : ['#e66868',   '167'],
      \ 'grey0'           : ['#7a8478',   '243'],
      \ 'grey1'           : ['#859289',   '245'],
      \ 'grey2'           : ['#829181',   '246'],
      \ 'operator_base05' : ['#e8c097',   '251'],
      \ 'none'            : ['NONE',      'NONE']
  \ }
"}}}
" Definition: {{{
let s:accents = s:colors.red

let s:error_fg = s:colors.bg0
let s:error_bg = s:colors.red
let s:warning_fg = s:colors.bg0
let s:warning_bg = s:colors.orange
let s:term_fg = s:colors.grey2
let s:term_bg = s:colors.bg2

let s:tab_fg = s:colors.grey2
let s:tab_bg = s:colors.bg2
let s:tab_sel_fg = s:colors.bg0
let s:tab_sel_bg = s:colors.grey2
let s:tab_mid_fg = s:colors.grey1
let s:tab_mid_bg = s:colors.bg0
let s:tab_mod_fg = s:colors.bg0
let s:tab_mod_bg = s:colors.grey2
let s:tab_type_fg = s:colors.bg0
let s:tab_type_bg = s:colors.orange
let s:tab_label_fg = s:colors.grey2
let s:tab_label_bg = s:colors.bg2

let s:normal_side_fg = s:colors.bg0
let s:normal_side_bg = s:colors.grey2
let s:normal_sub_fg = s:colors.grey2
let s:normal_sub_bg = s:colors.bg3
let s:normal_mid_fg = s:colors.grey2
let s:normal_mid_bg = s:colors.bg2
let s:normal_mod_fg = s:colors.fg1
let s:normal_mod_bg = s:colors.bg2

let s:insert_side_fg = s:colors.bg0
let s:insert_side_bg = s:colors.blue
let s:insert_sub_fg = s:colors.fg1
let s:insert_sub_bg = s:colors.bg3
let s:insert_mid_fg = s:colors.fg1
let s:insert_mid_bg = s:colors.bg3
let s:insert_mod_fg = s:colors.blue
let s:insert_mod_bg = s:colors.bg3

let s:visual_side_fg = s:colors.bg0
let s:visual_side_bg = s:colors.orange
let s:visual_sub_fg = s:colors.fg1
let s:visual_sub_bg = s:colors.bg3
let s:visual_mid_fg = s:colors.bg0
let s:visual_mid_bg = s:colors.grey0
let s:visual_mod_fg = s:colors.bg0
let s:visual_mod_bg = s:colors.grey0

let s:replace_side_fg = s:colors.bg0
let s:replace_side_bg = s:colors.aqua
let s:replace_sub_fg = s:colors.fg1
let s:replace_sub_bg = s:colors.bg3
let s:replace_mid_fg = s:colors.fg1
let s:replace_mid_bg = s:colors.bg3
let s:replace_mod_fg = s:colors.aqua
let s:replace_mod_bg = s:colors.bg3

let s:commandline_side_fg = s:colors.bg0
let s:commandline_side_bg = s:colors.green
let s:commandline_sub_fg = s:colors.fg1
let s:commandline_sub_bg = s:colors.bg3
let s:commandline_mid_fg = s:colors.fg1
let s:commandline_mid_bg = s:colors.bg3
let s:commandline_mod_fg = s:colors.green
let s:commandline_mod_bg = s:colors.bg3

let s:inactive_side_fg = s:colors.grey2
let s:inactive_side_bg = s:colors.bg1
let s:inactive_sub_fg = s:colors.grey2
let s:inactive_sub_bg = s:colors.bg1
let s:inactive_mid_fg = s:colors.grey2
let s:inactive_mid_bg = s:colors.bg1
let s:inactive_mod_fg = s:colors.grey2
let s:inactive_mod_bg = s:colors.bg1 "}}}
"}}}
" Implementation: {{{
let g:airline#themes#overcast#palette = {}
let g:airline#themes#overcast#palette.accents = {
      \ 'red': [ s:accents[0] , '' , s:accents[1] , '' , '' ],
      \ }

" Normal mode
let s:N1 = [ s:normal_side_fg[0] , s:normal_side_bg[0] , s:normal_side_fg[1] , s:normal_side_bg[1] ]
let s:N2 = [ s:normal_sub_fg[0] , s:normal_sub_bg[0] , s:normal_sub_fg[1] , s:normal_sub_bg[1] ]
let s:N3 = [ s:normal_mid_fg[0] , s:normal_mid_bg[0] , s:normal_mid_fg[1] , s:normal_mid_bg[1] ]

let g:airline#themes#overcast#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#overcast#palette.normal.airline_error = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#overcast#palette.normal.airline_warning = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#overcast#palette.normal.airline_term = [ s:term_fg[0] , s:term_bg[0] , s:term_fg[1] , s:term_bg[1] ]
let g:airline#themes#overcast#palette.normal.airline_error_inactive = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#overcast#palette.normal.airline_warning_inactive = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#overcast#palette.normal.airline_error_red = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#overcast#palette.normal.airline_warning_red = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#overcast#palette.normal_modified = deepcopy(g:airline#themes#overcast#palette.normal)
let g:airline#themes#overcast#palette.normal_modified.airline_c = [ s:normal_mod_fg[0] , s:normal_mod_bg[0] , s:normal_mod_fg[1] , s:normal_mod_bg[1] ]

" Insert mode
let s:I1 = [ s:insert_side_fg[0] , s:insert_side_bg[0] , s:insert_side_fg[1] , s:insert_side_bg[1] ]
let s:I2 = [ s:insert_sub_fg[0] , s:insert_sub_bg[0] , s:insert_sub_fg[1] , s:insert_sub_bg[1] ]
let s:I3 = [ s:insert_mid_fg[0] , s:insert_mid_bg[0] , s:insert_mid_fg[1] , s:insert_mid_bg[1] ]

let g:airline#themes#overcast#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#overcast#palette.insert.airline_error = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#overcast#palette.insert.airline_warning = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#overcast#palette.insert.airline_term = [ s:term_fg[0] , s:term_bg[0] , s:term_fg[1] , s:term_bg[1] ]
let g:airline#themes#overcast#palette.insert.airline_error_inactive = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#overcast#palette.insert.airline_warning_inactive = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#overcast#palette.insert.airline_error_red = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#overcast#palette.insert.airline_warning_red = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#overcast#palette.insert_modified = deepcopy(g:airline#themes#overcast#palette.insert)
let g:airline#themes#overcast#palette.insert_modified.airline_c = [ s:insert_mod_fg[0] , s:insert_mod_bg[0] , s:insert_mod_fg[1] , s:insert_mod_bg[1] ]

" Replace mode
let s:R1 = [ s:replace_side_fg[0] , s:replace_side_bg[0] , s:replace_side_fg[1] , s:replace_side_bg[1] ]
let s:R2 = [ s:replace_sub_fg[0] , s:replace_sub_bg[0] , s:replace_sub_fg[1] , s:replace_sub_bg[1] ]
let s:R3 = [ s:replace_mid_fg[0] , s:replace_mid_bg[0] , s:replace_mid_fg[1] , s:replace_mid_bg[1] ]

let g:airline#themes#overcast#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#overcast#palette.replace.airline_error = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#overcast#palette.replace.airline_warning = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#overcast#palette.replace.airline_term = [ s:term_fg[0] , s:term_bg[0] , s:term_fg[1] , s:term_bg[1] ]
let g:airline#themes#overcast#palette.replace.airline_error_inactive = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#overcast#palette.replace.airline_warning_inactive = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#overcast#palette.replace.airline_error_red = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#overcast#palette.replace.airline_warning_red = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#overcast#palette.replace_modified = deepcopy(g:airline#themes#overcast#palette.replace)
let g:airline#themes#overcast#palette.replace_modified.airline_c = [ s:replace_mod_fg[0] , s:replace_mod_bg[0] , s:replace_mod_fg[1] , s:replace_mod_bg[1] ]

" Visual mode
let s:V1 = [ s:visual_side_fg[0] , s:visual_side_bg[0] , s:visual_side_fg[1] , s:visual_side_bg[1] ]
let s:V2 = [ s:visual_sub_fg[0] , s:visual_sub_bg[0] , s:visual_sub_fg[1] , s:visual_sub_bg[1] ]
let s:V3 = [ s:visual_mid_fg[0] , s:visual_mid_bg[0] , s:visual_mid_fg[1] , s:visual_mid_bg[1] ]

let g:airline#themes#overcast#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#overcast#palette.visual.airline_error = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#overcast#palette.visual.airline_warning = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#overcast#palette.visual.airline_term = [ s:term_fg[0] , s:term_bg[0] , s:term_fg[1] , s:term_bg[1] ]
let g:airline#themes#overcast#palette.visual.airline_error_inactive = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#overcast#palette.visual.airline_warning_inactive = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#overcast#palette.visual.airline_error_red = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#overcast#palette.visual.airline_warning_red = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#overcast#palette.visual_modified = deepcopy(g:airline#themes#overcast#palette.visual)
let g:airline#themes#overcast#palette.visual_modified.airline_c = [ s:visual_mod_fg[0] , s:visual_mod_bg[0] , s:visual_mod_fg[1] , s:visual_mod_bg[1] ]

" Command Line mode
let s:R1 = [ s:commandline_side_fg[0] , s:commandline_side_bg[0] , s:commandline_side_fg[1] , s:commandline_side_bg[1] ]
let s:R2 = [ s:commandline_sub_fg[0] , s:commandline_sub_bg[0] , s:commandline_sub_fg[1] , s:commandline_sub_bg[1] ]
let s:R3 = [ s:commandline_mid_fg[0] , s:commandline_mid_bg[0] , s:commandline_mid_fg[1] , s:commandline_mid_bg[1] ]

let g:airline#themes#overcast#palette.commandline = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#overcast#palette.commandline.airline_error = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#overcast#palette.commandline.airline_warning = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#overcast#palette.commandline.airline_term = [ s:term_fg[0] , s:term_bg[0] , s:term_fg[1] , s:term_bg[1] ]
let g:airline#themes#overcast#palette.commandline.airline_error_inactive = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#overcast#palette.commandline.airline_warning_inactive = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#overcast#palette.commandline.airline_error_red = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#overcast#palette.commandline.airline_warning_red = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#overcast#palette.commandline_modified = deepcopy(g:airline#themes#overcast#palette.commandline)
let g:airline#themes#overcast#palette.commandline_modified.airline_c = [ s:commandline_mod_fg[0] , s:commandline_mod_bg[0] , s:commandline_mod_fg[1] , s:commandline_mod_bg[1] ]

" Inactive
let s:IA1 = [ s:inactive_side_fg[0] , s:inactive_side_bg[0] , s:inactive_side_fg[1] , s:inactive_side_bg[1] ]
let s:IA2 = [ s:inactive_sub_fg[0] , s:inactive_sub_bg[0] , s:inactive_sub_fg[1] , s:inactive_sub_bg[1] ]
let s:IA3 = [ s:inactive_mid_fg[0] , s:inactive_mid_bg[0] , s:inactive_mid_fg[1] , s:inactive_mid_bg[1] ]

let g:airline#themes#overcast#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#overcast#palette.inactive_modified = deepcopy(g:airline#themes#overcast#palette.inactive)
let g:airline#themes#overcast#palette.inactive_modified.airline_c = [ s:inactive_mod_fg[0] , s:inactive_mod_bg[0] , s:inactive_mod_fg[1] , s:inactive_mod_bg[1] ]

" TabLine
let g:airline#themes#overcast#palette.tabline = {}
let g:airline#themes#overcast#palette.tabline.airline_tab = [ s:tab_fg[0] , s:tab_bg[0] , s:tab_fg[1] , s:tab_bg[1] ]
let g:airline#themes#overcast#palette.tabline.airline_tab_right = [ s:tab_fg[0] , s:tab_bg[0] , s:tab_fg[1] , s:tab_bg[1] ]
let g:airline#themes#overcast#palette.tabline.airline_tabsel = [ s:tab_sel_fg[0] , s:tab_sel_bg[0] , s:tab_sel_fg[1] , s:tab_sel_bg[1] , 'bold' ]
let g:airline#themes#overcast#palette.tabline.airline_tabsel_right = [ s:tab_sel_fg[0] , s:tab_sel_bg[0] , s:tab_sel_fg[1] , s:tab_sel_bg[1] , 'bold' ]
let g:airline#themes#overcast#palette.tabline.airline_tabfill = [ s:tab_mid_fg[0] , s:tab_mid_bg[0] , s:tab_mid_fg[1] , s:tab_mid_bg[1] ]
let g:airline#themes#overcast#palette.tabline.airline_tabmod = [ s:tab_mod_fg[0] , s:tab_mod_bg[0] , s:tab_mod_fg[1] , s:tab_mod_bg[1] , 'bold' ]
let g:airline#themes#overcast#palette.tabline.airline_tabmod_right = [ s:tab_mod_fg[0] , s:tab_mod_bg[0] , s:tab_mod_fg[1] , s:tab_mod_bg[1] , 'bold' ]
let g:airline#themes#overcast#palette.tabline.airline_tabtype = [ s:tab_type_fg[0] , s:tab_type_bg[0] , s:tab_type_fg[1] , s:tab_type_bg[1] ]
let g:airline#themes#overcast#palette.tabline.airline_tablabel = [ s:tab_label_fg[0] , s:tab_label_bg[0] , s:tab_label_fg[1] , s:tab_label_bg[1] ]
let g:airline#themes#overcast#palette.tabline.airline_tablabel_right = [ s:tab_label_fg[0] , s:tab_label_bg[0] , s:tab_label_fg[1] , s:tab_label_bg[1] ]
let g:airline#themes#overcast#palette.tabline.airline_tabhid = s:IA1

highlight! link bufferline_selected airline_c
"}}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:
