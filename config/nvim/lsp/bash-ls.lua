-- require'lspconfig'.bashls.setup{}

local lspconfig = require'lspconfig'
local configs = require'lspconfig/configs'
if not lspconfig.bashls then
  configs.bashls = {
      default_config = {
          cmd = { '/usr/bin/bash-language-server' };
          filetypes = { 'bash' };
          root_dir = function(fname)
            return lspconfig.util.find_git_ancestor(fname) or vim.loop.os_homedir()
          end;
          settings = {};
      };
  }
end

require'lspconfig'.bashls.setup{}
