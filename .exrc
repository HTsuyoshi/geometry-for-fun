let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>(compe-confirm) =luaeval('require"compe"._confirm()')
inoremap <silent> <Plug>(completion_trigger) <Cmd>lua require'completion'.triggerCompletion()
inoremap <silent> <Plug>(completion_smart_s_tab) <Cmd>lua require'completion'.smart_s_tab()
inoremap <silent> <Plug>(completion_smart_tab) <Cmd>lua require'completion'.smart_tab()
inoremap <silent> <Plug>(completion_prev_source) <Cmd>lua require'completion'.prevSource()
inoremap <silent> <Plug>(completion_next_source) <Cmd>lua require'completion'.nextSource()
inoremap <silent> <Plug>(completion_confirm_completion) <Cmd>call completion#wrap_completion()
lnoremap <expr> <Plug>(eskk:toggle) eskk#toggle()
noremap! <expr> <Plug>(eskk:toggle) eskk#toggle()
lnoremap <expr> <Plug>(eskk:disable) eskk#disable()
noremap! <expr> <Plug>(eskk:disable) eskk#disable()
lnoremap <expr> <Plug>(eskk:enable) eskk#enable()
noremap! <expr> <Plug>(eskk:enable) eskk#enable()
imap <expr> <S-Tab> v:lua.s_tab_complete()
nnoremap <silent>  :call comfortable_motion#flick(-200)
nnoremap <silent>  :call comfortable_motion#flick(100)
nnoremap <silent>  :call comfortable_motion#flick(200)
smap <expr> 	 v:lua.tab_complete()
nnoremap <NL> :bnext
nnoremap  :bprevious
nnoremap  <Cmd>nohlsearch|diffupdate|normal! 
nnoremap  :NERDTree
nnoremap  :NERDTreeToggle
nnoremap <silent>  :call comfortable_motion#flick(-100)
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap Y y$
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
xmap a% <Plug>(MatchitVisualTextObject)
xmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
nmap zuz <Plug>(FastFoldUpdate)
tnoremap <silent> <Plug>(fzf-normal) 
tnoremap <silent> <Plug>(fzf-insert) i
nnoremap <silent> <Plug>(fzf-normal) <Nop>
nnoremap <silent> <Plug>(fzf-insert) i
xnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
nnoremap <silent> <Plug>(FastFoldUpdate) :FastFoldUpdate!
nnoremap <Plug>(eskk:save-dictionary) :EskkUpdateDictionary
map <M-l> l
map <M-h> h
map <M-k> k
map <M-j> j
map <M-2> gt
map <M-1> gT
smap <expr> <S-Tab> v:lua.s_tab_complete()
imap <expr> 	 v:lua.tab_complete()
lmap <NL> <Plug>(eskk:toggle)
cmap <NL> <Plug>(eskk:toggle)
imap <NL> <Plug>(eskk:toggle)
inoremap  u
inoremap  u
let &cpo=s:cpo_save
unlet s:cpo_save
set helplang=pt
set inccommand=split
set listchars=tab:‚Üí\ ,nbsp:‚ê£,trail:‚Ä¢,extends:‚ü©,precedes:‚ü®
set runtimepath=~/.config/nvim,~/.config/nvim/plugged/eskk.vim,~/.config/nvim/plugged/vimtex,~/.config/nvim/plugged/FastFold,~/.config/nvim/plugged/vim-tex-fold,~/.config/nvim/plugged/nvim-lspconfig,~/.config/nvim/plugged/nvim-compe,~/.config/nvim/plugged/completion-nvim,~/.config/nvim/plugged/nvim-treesitter,~/.config/nvim/plugged/lsp-colors.nvim,~/.config/nvim/plugged/yuck.vim,~/.config/nvim/plugged/nerdtree,~/.config/nvim/plugged/nerdtree-git-plugin,~/.config/nvim/plugged/vim-airline,~/.config/nvim/plugged/vim-airline-themes,~/.config/nvim/plugged/comfortable-motion.vim,~/.config/nvim/plugged/onedark.nvim,~/.config/nvim/plugged/ayu-vim,~/.config/nvim/plugged/presence.nvim,/etc/xdg/nvim,~/.local/share/nvim/site,~/.local/share/flatpak/exports/share/nvim/site,/var/lib/flatpak/exports/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/var/lib/snapd/desktop/nvim/site,/usr/share/nvim/runtime,/usr/share/nvim/runtime/pack/dist/opt/matchit,/usr/lib/nvim,/var/lib/snapd/desktop/nvim/site/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/var/lib/flatpak/exports/share/nvim/site/after,~/.local/share/flatpak/exports/share/nvim/site/after,~/.local/share/nvim/site/after,/etc/xdg/nvim/after,~/.config/nvim/after,~/.config/nvim/plugged/vimtex/after,~/.config/nvim/plugged/vim-tex-fold/after,~/.config/nvim/plugged/nvim-compe/after,~/.config/nvim/plugged/nvim-treesitter/after,~/.config/nvim/plugged/nerdtree-git-plugin/after,/usr/share/vim/vimfiles
set shiftwidth=4
set showbreak=‚Ü™\ 
set showtabline=2
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.sty,.cls,.log,.aux,.bbl,.out,.blg,.brf,.cb,.dvi,.fdb_latexmk,.fls,.idx,.ilg,.ind,.inx,.pdf,.synctex.gz,.toc
set tabline=%!airline#extensions#tabline#get()
set tabstop=4
set termguicolors
set title
set window=42
" vim: set ft=vim :
