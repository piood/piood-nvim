" 基础设置
lua require('basic')
" Packer插件管理
lua require('plugins')
" 快捷键映射
lua require('keybindings')
" 皮肤设置
" https://github.com/ellisonleao/gruvbox.nvim
set background=dark " or light if you want light mode
colorscheme zephyr

" Packer插件管理
lua require('plugins')

" 插件配置
lua require('plugin-config/nvim-tree')
lua require('plugin-config/bufferline')
lua require('plugin-config/lualine')
lua require('plugin-config/nvim-treesitter')
lua require('plugin-config/telescope')
lua require('plugin-config/autopairs')
lua require("plugin-config/comment")
lua require("plugin-config/yati")
lua require('lsp/lsp_config')
lua require('lsp/nvim-cmp')
lua require('lsp/null-ls')
