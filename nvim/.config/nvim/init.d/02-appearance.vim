" Set colorscheme
function Palenight()
  hi CursorLine guibg=#1C1F2B
  hi CursorLineNr guibg=#1C1F2B guifg=#82aaff
  " hi Normal guibg=NONE
  hi Visual guibg=#1C1F2B
  hi Pmenu guibg=#32374d
  hi PmenuSel guibg=#82aaff guifg=#32374d
  hi PmenuSbar guibg=#32374d guifg=#32374d
  hi PmenuThumb guibg=#32374d guifg=#32374d
  hi GitGutterAdd guifg=#82aaff
  hi VertSplit guifg=#212333 hi Statusline guibg=NONE
  " hi NERDTreeOpenable guifg=#2B2E42

  " Syntax override
  hi phpVarSelector guifg=#f07178
  hi phpIdentifier guifg=#f07178
  hi jsObjectKey guifg=#f07178
  hi jsFunction guifg=#f07178
  hi jsDestructuringPropertyValue guifg=#f07178
  hi jsxComponentName guifg=#f07178
  hi jsDestructuringBraces guifg=#ffcb6b
  hi jsFuncArgs guifg=#ffcb6b
  hi jsSpreadExpression guifg=#82aaff

  " Statusline colors
  hi Base guibg=#212333 guifg=#959dcb
  hi Git guibg=#32374d guifg=#959dcb
  hi GitAlt guibg=#212333 guifg=#32374d
  hi LineCol guibg=#212333 guifg=#f07178 gui=bold
  hi LineColAlt guibg=#32374d guifg=#f07178
  hi LineHL guibg=#82aaff guifg=#82aaff
  hi Mode guibg=#212333 guifg=#82aaff gui=bold
  hi ModeAlt guibg=#32374d guifg=#82aaff
  hi Filetype guibg=#212333 guifg=#82aaff
  hi FiletypeAlt guibg=#212333 guifg=#32374d
  hi Inactive guifg=#959dcb guibg=#212333
  hi Modi guifg=#959dcb guibg=#212333
  hi Filename guifg=#959dcb guibg=#212333

  hi QuickScopePrimary guibg='#f07178' guifg='#292d3e' gui=underline
  hi QuickScopeSecondary guibg='#82aaff' guifg='#292d3e' gui=underline
endfunction

function Gruvbox()
  hi Normal guibg=NONE
  hi SignColumn guibg=NONE
  hi GitGutterAdd guifg=#458588
  hi GitGutterChange guifg=#D79921
  hi GitGutterDelete guifg=#CC241D
  hi jsonMissingCommaError guifg=#CC241D
  hi jsonNoQuotesError guifg=#CC241D

  " Statusline colors
  hi Base guibg=#3C3836 guifg=#ebdbb2
  hi Inactive guifg=#504945 guibg=#1d2021
  hi Git guibg=#504945 guifg=#ebdbb2
  hi LineCol guibg=#928374 guifg=#1d2021 gui=bold
  hi Mode guibg=#928374 guifg=#1d2021 gui=bold
  hi Filetype guibg=#504945 guifg=#ebdbb2
  hi Modi guibg=#504945 guifg=#ebdbb2
  hi Filename guibg=#3e3e3e guifg=#ebdbb2

  " hi ModeAlt guibg=#32374d guifg=#82aaff
  " hi GitAlt guibg=#212333 guifg=#32374d
  " hi LineColAlt guibg=#32374d guifg=#f07178
  " hi FiletypeAlt guibg=#212333 guifg=#32374d
  " hi LineHL guibg=#82aaff guifg=#82aaff

  hi LuaTreeFolderIcon guifg=#d79921
  hi LuaTreeIndentMarker guifg=#928374

  " Telescope nvim
  hi TelescopeSelection gui=bold guifg=#d79921 guibg=NONE
  hi TelescopeMatching gui=bold guifg=#CC241D guibg=NONE
  hi TelescopePreviewBorder gui=bold guifg=#928374 guibg=NONE
  hi TelescopePromptBorder gui=bold guifg=#928374 guibg=NONE
  hi TelescopeResultsBorder gui=bold guifg=#928374 guibg=NONE
endfunction

function CodeDark()
  hi Normal guibg=NONE
  hi SignColumn guibg=NONE
  hi GitGutterAdd guifg=#569cd6
  hi GitGutterChange guifg=#d7ba7d
  hi GitGutterDelete guifg=#d16969
  hi jsonMissingCommaError guifg=#d16969
  hi jsonNoQuotesError guifg=#d16969
  hi EndOfBuffer guibg=NONE
  hi NonText guibg=NONE
  hi LineNr guibg=NONE

  " Statusline colors
  hi Base guibg=#1e1e1e guifg=#d4d4d4
  hi Inactive guibg=#141414 guifg=#3c3c3c
  hi Git guibg=#2b2b2b guifg=#d4d4d4
  hi LineCol guibg=#3e3e3e guifg=#d4d4d4 gui=bold
  hi Mode guibg=#3d3d3d guifg=#d4d4d4 gui=bold
  hi Filetype guibg=#2b2b2b guifg=#d4d4d4
  hi Modi guibg=#2b2b2b guifg=#d4d4d4
  hi Filename guibg=#2b2b2b guifg=#d4d4d4

  " Lua tree
  hi LuaTreeFolderIcon guifg=#d16969
  hi LuaTreeIndentMarker guifg=#4a4a4a

  " Completion Menu
  hi Pmenu guibg=#1e1e1e
  hi PmenuSel guibg=#d16969 guifg=#2b2b2b
  hi PmenuSbar guibg=#2b2b2b guifg=#2b2b2b
  hi PmenuThumb guibg=#3e3e3e guifg=#3e3e3e

  " Telescope nvim
  hi TelescopeSelection gui=bold guifg=#d4d4d4 guibg=NONE
  hi TelescopeMatching gui=bold guifg=#d16969 guibg=NONE
  hi TelescopePreviewBorder gui=bold guifg=#3e3e3e guibg=NONE
  hi TelescopePromptBorder gui=bold guifg=#3e3e3e guibg=NONE
  hi TelescopeResultsBorder gui=bold guifg=#3e3e3e guibg=NONE
endfunction

augroup NewColor
  au!
  au ColorScheme palenight call Palenight()
  au ColorScheme gruvbox call Gruvbox()
  au ColorScheme codedark call CodeDark()
augroup END

let g:gruvbox_invert_selection=0
color gruvbox

hi Comment gui=italic

" Get current mode
let g:currentmode={
      \'n'  : 'Normal',
      \'no' : 'N·Operator Pending',
      \'v'  : 'Visual',
      \'V'  : 'V·Line',
      \'^V' : 'V·Block',
      \'s'  : 'Select',
      \'S'  : 'S·Line',
      \'^S' : 'S·Block',
      \'i'  : 'Insert',
      \'R'  : 'Replace',
      \'Rv' : 'V·Replace',
      \'c'  : 'Command',
      \'cv' : 'Vim Ex ',
      \'ce' : 'Ex ',
      \'r'  : 'Prompt ',
      \'rm' : 'More ',
      \'r?' : 'Confirm ',
      \'!'  : 'Shell ',
      \'t'  : 'Terminal '
      \}

" Get current git branch
function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  let l:branch = fugitive#head()
  if l:branch == ""
    return ''
  else
    return ' +'.a.' ~'.m.' -'.r.' |  ' .l:branch.' '
  endif
endfunction

" Get current mode
function! ModeCurrent() abort
    let l:modecurrent = mode()
    let l:modelist = toupper(get(g:currentmode, l:modecurrent, 'V·Block '))
    let l:current_status_mode = l:modelist
    return l:current_status_mode
endfunction

" Get current filetype
function! CheckFT(filetype)
  if a:filetype == ''
    return ''
  else
    return '| '.tolower(a:filetype).' '
  endif
endfunction

" Check modified status
function! CheckMod(modi)
  if a:modi == 1
    return expand('%:t').'*'
  else
    return expand('%:t')
  endif
endfunction

" Set active statusline
function! ActiveLine()
  " Set empty statusline and colors
  let statusline = ""
  let statusline .= "%#Base#"

  " Current mode
  let statusline .= "%#Mode# %{ModeCurrent()} "

  " let statusline .= "%#ModeAlt#"

  " Current git branch
  let statusline .= "%#Git#%{GitStatus()}%)"

  " let statusline .= "%#GitAlt#"

  let statusline .= "%#Base#"

  " Align items to right
  let statusline .= "%="

  " Current modified status and filename
  let statusline .= "%#Modi# %{CheckMod(&modified)} "

  " Current filetype
  " let statusline .= "%#FiletypeAlt# "
  let statusline .= "%#Filetype#%{CheckFT(&filetype)}"

  " Current line and column
  " let statusline .= "%#LineColAlt# "
  let statusline .= "%#LineCol# Ln %l, Col %c "

  return statusline
endfunction

" Set inactive statusline
function! InactiveLine()
  " Set empty statusline and colors
  let statusline = ""
  let statusline .= "%#Base#"

  " Full path of the file
  let statusline .= "%#Inactive# %F "

  return statusline
endfunction

" Set NERDTree statusline
function! NERDLine()
  " Set empty statusline and colors
  let statusline = ""
  let statusline .= "%#Base#"

  " NERDTree title
  let statusline .= "Explorer"

  return statusline
endfunction

" Change statusline automatically
augroup Statusline
  au!
  au WinEnter,BufEnter * setlocal statusline=%!ActiveLine()
  au WinLeave,BufLeave * setlocal statusline=%!InactiveLine()
  au FileType LuaTree setlocal statusline=%!NERDLine()
augroup END
