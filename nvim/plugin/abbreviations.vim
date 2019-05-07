cnoreabbrev Wa wa
cnoreabbrev Wq wq
cnoreabbrev WQ wq
cnoreabbrev Wqa wqa
cnoreabbrev W! w!
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Q! q!
cnoreabbrev Qa qa
cnoreabbrev Qall qall
cnoreabbrev Qall! qall!
cnoreabbrev Bd bd
cnoreabbrev wrap set wrap
cnoreabbrev nowrap set nowrap
cnoreabbrev E e
cnoreabbrev f find


"lorem ipsum
iabbrev lis Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Integer diam augue, egestas quis, aliquam ut, venenatis ut, quam.
iabbrev lim Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Integer diam augue, egestas quis, aliquam ut, venenatis ut, quam. Quisque ut augue. Integer non neque a lectus venenatis fermentum.
iabbrev lix Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Integer diam augue, egestas quis, aliquam ut, venenatis ut, quam. Quisque ut augue. Integer non neque a lectus venenatis fermentum. Morbi quis eros nec elit molestie vehicula. Integer nunc lacus, sodales posuere, rutrum quis, blandit at, mi.

" React
iabbrev ire import React from 'react'

" Export Default Class Component
iabbrev edc> import React, { Component } from 'react' <CR><CR>export default class <esc>i extends Component {<CR>  render() {<CR>  return (<CR>)<CR>}<CR>}<esc>5k^eeea

" Export Class Component
iabbrev ec> import React, { Component } from 'react' <CR><CR>export class <esc>i extends Component {<CR>  render() {<CR>  return (<CR>)<CR>}<CR>}<esc>5k^eea

" Export Default Functional Component
iabbrev edf> import React from 'react' <CR><CR>export default function <esc>i (){<CR>  return (<CR>)<CR>}<esc>5k^eeea

" Export Functional Component
iabbrev ef> import React from 'react' <CR><CR>export function <esc>i (){<CR>  return (<CR>)<CR>}<esc>5k^eea

" Mobx-react
iabbrev injob import { inject, observer } from 'mobx-react'
iabbrev io @inject('')<CR>@observer<esc>1k^f'a

" flex
iabbrev flow flex flex-row
iabbrev floc flex flex-column

" JavaScript
iabbrev dbg debugger
