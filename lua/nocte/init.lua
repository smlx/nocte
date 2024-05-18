-- based heavily on https://codeberg.org/noahfrederick/vim-noctu
local M = {}

function M.load()
  vim.opt.background = 'dark'
  vim.opt.termguicolors = false
  if vim.g.colors_name then
    vim.cmd.highlight 'clear'
  end
  if vim.fn.exists 'syntax_on' then
    vim.cmd.syntax 'reset'
  end
  vim.g.colors_name = 'nocte'
  -- vim UI
  vim.api.nvim_set_hl(0, 'Conceal',      { ctermfg = 6 })
  vim.api.nvim_set_hl(0, 'Cursor',       { ctermfg = 7,  ctermbg = 1 })
  vim.api.nvim_set_hl(0, 'CursorColumn', { link = 'CursorLine' })
  vim.api.nvim_set_hl(0, 'CursorLine',   { ctermbg = 0 })
  vim.api.nvim_set_hl(0, 'CursorLineNr', { ctermfg = 11, ctermbg = 0 })
  vim.api.nvim_set_hl(0, 'DiffAdd',      { ctermfg = 0,  ctermbg = 2 })
  vim.api.nvim_set_hl(0, 'DiffChange',   { ctermfg = 0,  ctermbg = 3 })
  vim.api.nvim_set_hl(0, 'DiffDelete',   { ctermfg = 0,  ctermbg = 1 })
  vim.api.nvim_set_hl(0, 'DiffText',     { ctermfg = 0,  ctermbg = 11, cterm = { bold = true } })
  vim.api.nvim_set_hl(0, 'Directory',    { ctermfg = 12 })
  vim.api.nvim_set_hl(0, 'ErrorMsg',     { ctermfg = 15, ctermbg = 1 })
  vim.api.nvim_set_hl(0, 'FloatBorder',  { link = 'WinSeparator' })
  vim.api.nvim_set_hl(0, 'FoldColumn',   { link = 'SignColumn' })
  vim.api.nvim_set_hl(0, 'Folded',       { ctermfg = 6,  ctermbg = 0,  cterm = { bold = true } })
  vim.api.nvim_set_hl(0, 'IncSearch',    { ctermfg = 0,  ctermbg = 13 })
  vim.api.nvim_set_hl(0, 'LineNr',       { ctermfg = 8 })
  vim.api.nvim_set_hl(0, 'MatchParen',   { ctermfg = 7,  cterm = { underline = true } })
  vim.api.nvim_set_hl(0, 'ModeMsg',      { link = 'MoreMsg' })
  vim.api.nvim_set_hl(0, 'MoreMsg',      { link = 'Title' })
  vim.api.nvim_set_hl(0, 'NonText',      { ctermfg = 8 })
  vim.api.nvim_set_hl(0, 'Normal',       { ctermfg = 7 })
  vim.api.nvim_set_hl(0, 'NormalFloat',  { link = 'Pmenu' })
  vim.api.nvim_set_hl(0, 'Pmenu',        { ctermfg = 15, ctermbg = 0 })
  vim.api.nvim_set_hl(0, 'PmenuSBar',    { ctermbg = 8 })
  vim.api.nvim_set_hl(0, 'PmenuSel',     { ctermfg = 0,  ctermbg = 4 })
  vim.api.nvim_set_hl(0, 'PmenuThumb',   { ctermbg = 7 })
  vim.api.nvim_set_hl(0, 'Question',     { link = 'MoreMsg' })
  vim.api.nvim_set_hl(0, 'QuickFixLine', { link = 'Visual' })
  vim.api.nvim_set_hl(0, 'Search',       { ctermfg = 0,  ctermbg = 10 })
  vim.api.nvim_set_hl(0, 'SignColumn',   { link = 'LineNr' })
  vim.api.nvim_set_hl(0, 'SpecialKey',   { link = 'NonText' })
  vim.api.nvim_set_hl(0, 'SpellBad',     { ctermfg = 1,  cterm = { underline = true } })
  vim.api.nvim_set_hl(0, 'SpellCap',     { ctermfg = 10, cterm = { underline = true } })
  vim.api.nvim_set_hl(0, 'SpellLocal',   { ctermfg = 13, cterm = { underline = true } })
  vim.api.nvim_set_hl(0, 'SpellRare',    { ctermfg = 11, cterm = { underline = true } })
  vim.api.nvim_set_hl(0, 'StatusLine',   { ctermfg = 7,  ctermbg = 0,  cterm = { bold = true } })
  vim.api.nvim_set_hl(0, 'StatusLineNC', { ctermfg = 8,  ctermbg = 0,  cterm = { bold = true } })
  vim.api.nvim_set_hl(0, 'TabLine',      { ctermfg = 8,  ctermbg = 0 })
  vim.api.nvim_set_hl(0, 'TabLineFill',  { link = 'StatusLineNC' })
  vim.api.nvim_set_hl(0, 'TabLineSel',   { ctermfg = 7,  ctermbg = 0 })
  vim.api.nvim_set_hl(0, 'Title',        { ctermfg = 3,  cterm = { bold = true } })
  vim.api.nvim_set_hl(0, 'User1',        { ctermfg = 1,  ctermbg = 0 })
  vim.api.nvim_set_hl(0, 'User2',        { ctermfg = 4,  ctermbg = 0 })
  vim.api.nvim_set_hl(0, 'User3',        { ctermfg = 2,  ctermbg = 0 })
  vim.api.nvim_set_hl(0, 'User4',        { ctermfg = 3,  ctermbg = 0 })
  vim.api.nvim_set_hl(0, 'User5',        { ctermfg = 5,  ctermbg = 0 })
  vim.api.nvim_set_hl(0, 'User6',        { ctermfg = 6,  ctermbg = 0 })
  vim.api.nvim_set_hl(0, 'User7',        { ctermfg = 7,  ctermbg = 0 })
  vim.api.nvim_set_hl(0, 'User8',        { ctermfg = 8,  ctermbg = 0 })
  vim.api.nvim_set_hl(0, 'User9',        { ctermfg = 15, ctermbg = 5 })
  vim.api.nvim_set_hl(0, 'VertSplit',    { ctermfg = 0,  ctermbg = 0 })
  vim.api.nvim_set_hl(0, 'Visual',       { ctermfg = 0,  ctermbg = 12 })
  vim.api.nvim_set_hl(0, 'WarningMsg',   { link = 'ErrorMsg' })
  vim.api.nvim_set_hl(0, 'WildMenu',     { link = 'Visual' })
  vim.api.nvim_set_hl(0, 'WinSeparator', { link = 'VertSplit' })
  -- syntax
  vim.api.nvim_set_hl(0, 'Boolean',           { ctermfg = 4 })
  vim.api.nvim_set_hl(0, 'Comment',           { ctermfg = 8 })
  vim.api.nvim_set_hl(0, 'Constant',          { ctermfg = 13 })
  vim.api.nvim_set_hl(0, 'Delimiter',         { ctermfg = 7 })
  vim.api.nvim_set_hl(0, 'Error',             { link = 'ErrorMsg' })
  vim.api.nvim_set_hl(0, 'Function',          { ctermfg = 4 })
  vim.api.nvim_set_hl(0, 'Identifier',        { ctermfg = 7 })
  vim.api.nvim_set_hl(0, 'Ignore',            { ctermfg = 0 })
  vim.api.nvim_set_hl(0, 'Keyword',           { ctermfg = 2 })
  vim.api.nvim_set_hl(0, 'Number',            { ctermfg = 12 })
  vim.api.nvim_set_hl(0, 'Operator',          { link = 'Delimiter' })
  vim.api.nvim_set_hl(0, 'PreProc',           { ctermfg = 8,  cterm = { bold = true } })
  vim.api.nvim_set_hl(0, 'Special',           { ctermfg = 13 })
  vim.api.nvim_set_hl(0, 'Statement',         { ctermfg = 2,  cterm = { bold = true } })
  vim.api.nvim_set_hl(0, 'String',            { ctermfg = 11 })
  vim.api.nvim_set_hl(0, 'Todo',              { ctermfg = 15, cterm = { bold = true, underline = true } })
  vim.api.nvim_set_hl(0, 'Type',              { ctermfg = 4 })
  vim.api.nvim_set_hl(0, 'Underlined',        { ctermfg = 4,  cterm = { underline = true } })
  -- link Treesitter highlight groups to regular highlight groups
  -- Full list is here:
  -- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md#highlights
  vim.api.nvim_set_hl(0, '@include',          { link = 'PreProc' })
  vim.api.nvim_set_hl(0, '@conditional',      { link = 'Keyword' })
  -- link LSP highlight groups to Treesitter highlight groups
  -- Full list is here:
  -- https://neovim.io/doc/user/lsp.html#lsp-semantic-highlight
  vim.api.nvim_set_hl(0, '@lsp.type.include',     { link = '@include' })
  vim.api.nvim_set_hl(0, '@lsp.type.conditional', { link = '@conditional' })
  vim.api.nvim_set_hl(0, '@lsp.type.type',        { link = '@type' })
  -- gitCommit
  vim.api.nvim_set_hl(0, 'gitCommitBranch',        { ctermfg = 3 })
  vim.api.nvim_set_hl(0, 'gitCommitSelectedType',  { ctermfg = 10 })
  vim.api.nvim_set_hl(0, 'gitCommitSelectedFile',  { ctermfg = 2 })
  vim.api.nvim_set_hl(0, 'gitCommitUnmergedType',  { ctermfg = 9 })
  vim.api.nvim_set_hl(0, 'gitCommitUnmergedFile',  { ctermfg = 1 })
  vim.api.nvim_set_hl(0, 'gitCommitFile',          { link = 'Directory' })
  vim.api.nvim_set_hl(0, 'gitCommitUntrackedFile', { link = 'gitCommitUnmergedFile' })
  vim.api.nvim_set_hl(0, 'gitCommitDiscardedType', { link = 'gitCommitUnmergedType' })
  vim.api.nvim_set_hl(0, 'gitCommitDiscardedFile', { link = 'gitCommitUnmergedFile' })
  -- HTML
  vim.api.nvim_set_hl(0, 'htmlTagName',             { ctermfg = 2 })
  vim.api.nvim_set_hl(0, 'htmlTag',                 { ctermfg = 2 })
  vim.api.nvim_set_hl(0, 'htmlArg',                 { ctermfg = 10 })
  vim.api.nvim_set_hl(0, 'htmlH1',                  { cterm = { bold = true } })
  vim.api.nvim_set_hl(0, 'htmlBold',                { cterm = { bold = true } })
  vim.api.nvim_set_hl(0, 'htmlItalic',              { cterm = { underline = true } })
  vim.api.nvim_set_hl(0, 'htmlUnderline',           { cterm = { underline = true } })
  vim.api.nvim_set_hl(0, 'htmlBoldItalic',          { cterm = { bold = true, underline = true } })
  vim.api.nvim_set_hl(0, 'htmlBoldUnderline',       { cterm = { bold = true, underline = true } })
  vim.api.nvim_set_hl(0, 'htmlUnderlineItalic',     { cterm = { underline = true } })
  vim.api.nvim_set_hl(0, 'htmlBoldUnderlineItalic', { cterm = { bold = true, underline = true } })
  vim.api.nvim_set_hl(0, 'htmlLink',                { link = 'Underlined' })
  vim.api.nvim_set_hl(0, 'htmlEndTag',              { link = 'htmlTag' })
  -- XML
  vim.api.nvim_set_hl(0, 'xmlTagName', { ctermfg = 4 })
  vim.api.nvim_set_hl(0, 'xmlTag',     { ctermfg = 12 })
  vim.api.nvim_set_hl(0, 'xmlString',  { link = 'xmlTagName' })
  vim.api.nvim_set_hl(0, 'xmlAttrib',  { link = 'xmlTag' })
  vim.api.nvim_set_hl(0, 'xmlEndTag',  { link = 'xmlTag' })
  vim.api.nvim_set_hl(0, 'xmlEqual',   { link = 'xmlTag' })
  -- JavaScript
  vim.api.nvim_set_hl(0, 'javaScript',       { link = 'Normal' })
  vim.api.nvim_set_hl(0, 'javaScriptBraces', { link = 'Delimiter' })
  -- PHP
  vim.api.nvim_set_hl(0, 'phpSpecialFunction', { ctermfg = 5 })
  vim.api.nvim_set_hl(0, 'phpIdentifier',      { ctermfg = 11 })
  vim.api.nvim_set_hl(0, 'phpParent',          { ctermfg = 8 })
  vim.api.nvim_set_hl(0, 'phpVarSelector',     { link = 'phpIdentifier' })
  vim.api.nvim_set_hl(0, 'phpHereDoc',         { link = 'String' })
  vim.api.nvim_set_hl(0, 'phpDefine',          { link = 'Statement' })
  -- Markdown
  vim.api.nvim_set_hl(0, 'markdownHeadingRule',       { link = 'NonText' })
  vim.api.nvim_set_hl(0, 'markdownHeadingDelimiter',  { link = 'markdownHeadingRule' })
  vim.api.nvim_set_hl(0, 'markdownLinkDelimiter',     { link = 'Delimiter' })
  vim.api.nvim_set_hl(0, 'markdownURLDelimiter',      { link = 'Delimiter' })
  vim.api.nvim_set_hl(0, 'markdownCodeDelimiter',     { link = 'NonText' })
  vim.api.nvim_set_hl(0, 'markdownLinkTextDelimiter', { link = 'markdownLinkDelimiter' })
  vim.api.nvim_set_hl(0, 'markdownUrl',               { link = 'markdownLinkText' })
  vim.api.nvim_set_hl(0, 'markdownAutomaticLink',     { link = 'markdownLinkText' })
  vim.api.nvim_set_hl(0, 'markdownCodeBlock',         { link = 'String' })
  vim.api.nvim_set_hl(0, 'markdownCode',              { link = 'markdownBold' })
  vim.api.nvim_set_hl(0, 'markdownBold',              { cterm = { bold = true } })
  vim.api.nvim_set_hl(0, 'markdownItalic',            { cterm = { underline = true } })
  -- Ruby
  vim.api.nvim_set_hl(0, 'rubyDefine',                { link = 'Statement' })
  vim.api.nvim_set_hl(0, 'rubyLocalVariableOrMethod', { link = 'Identifier' })
  vim.api.nvim_set_hl(0, 'rubyConstant',              { link = 'Constant' })
  vim.api.nvim_set_hl(0, 'rubyInstanceVariable',      { link = 'Number' })
  vim.api.nvim_set_hl(0, 'rubyStringDelimiter',       { link = 'rubyString' })
  -- Vim
  vim.api.nvim_set_hl(0, 'vimSetSep',   { link = 'Delimiter' })
  vim.api.nvim_set_hl(0, 'vimContinue', { link = 'Delimiter' })
  vim.api.nvim_set_hl(0, 'vimHiAttrib', { link = 'Constant' })
  -- help
  vim.api.nvim_set_hl(0, 'helpExample',        { link = 'String' })
  vim.api.nvim_set_hl(0, 'helpHeadline',       { link = 'Title' })
  vim.api.nvim_set_hl(0, 'helpSectionDelim',   { link = 'Comment' })
  vim.api.nvim_set_hl(0, 'helpHyperTextEntry', { link = 'Statement' })
  vim.api.nvim_set_hl(0, 'helpHyperTextJump',  { link = 'Underlined' })
  vim.api.nvim_set_hl(0, 'helpURL',            { link = 'Underlined' })
  -- Shell
  vim.api.nvim_set_hl(0, 'shDerefSimple', { ctermfg = 11 })
  vim.api.nvim_set_hl(0, 'shDerefVar',    { link = 'shDerefSimple' })
  -- Diff
  vim.api.nvim_set_hl(0, 'diffAdded',   { ctermfg = 2 })
  vim.api.nvim_set_hl(0, 'diffRemoved', { ctermfg = 1 })
  vim.api.nvim_set_hl(0, 'diffFile',    { link = 'PreProc' })
  vim.api.nvim_set_hl(0, 'diffLine',    { link = 'Title' })
end

return M
