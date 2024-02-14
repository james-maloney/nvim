local null_ls = require('null-ls')
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})


function printObj(obj, hierarchyLevel)
  if (hierarchyLevel == nil) then
    hierarchyLevel = 0
  elseif (hierarchyLevel == 4) then
    return 0
  end

  local whitespace = ""
  for i = 0, hierarchyLevel, 1 do
    whitespace = whitespace .. "-"
  end
  io.write(whitespace)

  print(obj)
  if (type(obj) == "table") then
    for k, v in pairs(obj) do
      io.write(whitespace .. "-")
      if (type(v) == "table") then
        printObj(v, hierarchyLevel + 1)
      else
        print(v)
      end
    end
  else
    print(obj)
  end
end

null_ls.setup({
  debug = false,
  sources = {
    null_ls.builtins.formatting.eslint_d,
    null_ls.builtins.code_actions.eslint_d,
    null_ls.builtins.code_actions.gitsigns,
    null_ls.builtins.code_actions.gomodifytags,
    null_ls.builtins.code_actions.shellcheck,
    null_ls.builtins.diagnostics.buf,
    null_ls.builtins.code_actions.gomodifytags,
    null_ls.builtins.formatting.goimports,
    null_ls.builtins.formatting.jq,
  },
  on_attach = function(client, bufnr)
    print("supprted", client.name)

    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end
  end,
})

vim.lsp.buf.format({ timeout_ms = 2000 })
