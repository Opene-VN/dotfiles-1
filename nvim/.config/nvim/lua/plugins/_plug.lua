-- TODO: find out why some plugins doesn't apply its config using this method
local plug_directory = '~/.local/share/nvim/site/autoload/plug.vim'
local plug_url = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
local plugins_directory = '~/.local/share/nvim/plugged'

-- TODO: find a better way for this
if vim.fn.empty(vim.fn.glob(plug_directory)) == 1 then
  vim.cmd([[
     silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
     au VimEnter * PlugInstall --sync
  ]])
  -- vim.cmd(table.concat{
  --  'silent !curl -fLo',
  --  plug_directory,
  --  '--create-dirs',
  --  plug_url
  -- })
  -- vim.cmd('au VimEnter * PlugInstall --sync')
end

-- TODO: find better way instead of using escape ( \' )
-- define your plugins here
local plugins = {
  'gruvbox-community/gruvbox', -- nice colorscheme
  'cohama/lexima.vim', -- autopairs brackets, braces, etc
  -- 'hrsh7th/nvim-compe', -- completion
  'neoclide/jsonc.vim', -- jsonc highlighting
  'wakatime/vim-wakatime', -- track usage time using wakatime
  'norcalli/nvim-colorizer.lua', -- colorize hex/rgb/hsl value
  'sheerun/vim-polyglot', -- various languages highlighting
  -- 'nvim-treesitter/nvim-treesitter', -- better syntax highlighting
  'leafOfTree/vim-svelte-plugin', -- svelte language support
  'euclidianAce/BetterLua.vim', -- better lua highlighting
  'Yggdroot/indentline', -- indentline guide
  {
    'junegunn/goyo.vim',
    [[{'for': ['markdown', 'txt']}]],
  }, -- zen mode
  {
    'dhruvasagar/vim-table-mode',
    [[{'for': ['txt', 'markdown']}]],
  }, -- table alignment
  'psliwka/vim-smoothie', -- smooth scroll
  'kyazdani42/nvim-web-devicons', -- fancy icons
  'kyazdani42/nvim-tree.lua', -- file explorer
  'akinsho/nvim-bufferline.lua', -- bufferline
  'neovim/nvim-lspconfig', -- builtin lsp config
  -- {'neoclide/coc.nvim', [[{'branch': 'release'}]]}, -- coc.nvim
  'tjdevries/nlua.nvim', -- better lua development experience
  'mhartington/formatter.nvim', -- formatter
  'nvim-lua/completion-nvim', -- completion helper
  'steelsojka/completion-buffers', -- buffer source for completion
  'nvim-lua/diagnostic-nvim', -- diagnostic for nvim lsp
  'tpope/vim-commentary', -- comment stuff easier
  'mattn/emmet-vim', -- less typing for html code
  'tpope/vim-surround', -- surround words with symbol
  'nvim-lua/popup.nvim',
  'nvim-lua/plenary.nvim',
  'nvim-lua/telescope.nvim', -- fuzzy finder
  -- {'junegunn/fzf', '{\'do\': { -> fzf#install() } }'}, -- fuzzy finder
  -- 'junegunn/fzf.vim',
  'tpope/vim-fugitive', -- git helper
  'mhinz/vim-signify', -- show git stuff in signcolumn
}

local apply_plugins = function()
  vim.call('plug#begin', plugins_directory)

  for _, plugin in pairs(plugins) do
    if type(plugin) == 'table' then
      vim.cmd(string.format("Plug '%s', %s", plugin[1], plugin[2]))
    else
      vim.cmd(string.format("Plug '%s'", plugin))
    end
  end

  vim.call('plug#end')
end

-- apply dem sweet plugins
apply_plugins()