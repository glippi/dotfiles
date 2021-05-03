nnoremap <F8> :Dispatch! yarn start<CR>
nnoremap <F10> :tabnew<CR>:terminal<CR>iyarn test<CR><esc>
nnoremap <F12> :Dispatch! yarn watch<CR>

" If statement check
nmap !if yiwoif (!)<Esc>F!pA return null
" open node repl
nnoremap <leader>rpl :te<CR>inode<esc>:echo b:terminal_job_id
" create file with name of the variable under cursor
nnoremap <leader>cf yaw:e src/<C-r>"<left>.js<CR>iec><C-]>
" comment line
nnoremap <leader>/ ^i//<space><C-c>

nnoremap req cawconst<space><esc>pa<space>=<space>require('');<esc>F(lp<esc>$
nnoremap <M-C-c> oHOLA

" Require
iabbrev req> const CHANGEREQ = require('CHANGEREQ')<esc>:%s/CHANGEREQ/

" Import
iabbrev im> import X from ''<esc>FXcw

" React
iabbrev ire import React from 'react';

" Export Default Class Component
iabbrev edc> import React, { Component } from 'react' <CR><CR>export default class <C-R>=expand('%:t:r')<CR> extends Component {<CR>  render() {<CR>  return (<CR>)<CR>}<CR>}<esc>5k^eeea

" Export Class Component
iabbrev ec> import React, { Component } from 'react' <CR><CR>export class <C-R>=expand('%:t:r')<CR> extends Component {<CR>  render() {<CR>  return (<CR>)<CR>}<CR>}<esc>5k^eea

" Export Default Functional Component
iabbrev edf> import React from 'react' <CR><CR>export default function <C-R>=expand('%:t:r')<CR> (){<CR>  return (<CR>)<CR>}<esc>5k^eeea

" Export Functional Component
iabbrev ef> import React from 'react' <CR><CR>export function <C-R>=expand('%:t:r')<CR> (){<CR>  return (<CR>)<CR>}<esc>5k^eea

" Mobx-react
iabbrev injob> import { inject, observer } from 'mobx-react'
iabbrev io> @inject('')<CR>@observer<esc>1k^f'a

" flex
iabbrev flow> flex flex-row
iabbrev floc> flex flex-column

" Debugger
iabbrev db> debugger

"Test
iabbrev describe> describe('', () => {<CR><space><space>test('', () => {<CR><space>});<CR>});
iabbrev test> test('', () => {<CR>});
