local M = {}

function M.show_interface_definition_as_hover()
  local client = vim.lsp.get_clients({ bufnr = 0 })[1]
  if not client then
    vim.notify("No LSP client available", vim.log.levels.ERROR)
    return
  end

  local params = vim.lsp.util.make_position_params(0, client.offset_encoding)

  vim.lsp.buf_request(bufnr, "textDocument/definition", params, function(err, result, ctx, _)
    if err or not result or vim.tbl_isempty(result) then
      vim.notify("No definition found", vim.log.levels.WARN)
      return
    end

    local def = result[1]
    local uri = def.uri or def.targetUri
    local range = def.range or def.targetSelectionRange
    local def_bufnr = vim.uri_to_bufnr(uri)

    local start_line = range.start.line
    local lines = {}
    local depth = 0
    local max_lines = vim.api.nvim_buf_line_count(def_bufnr)

    for i = start_line, max_lines - 1 do
      local line = vim.api.nvim_buf_get_lines(def_bufnr, i, i + 1, false)[1]
      table.insert(lines, line)

      for c in line:gmatch("[{}]") do
        if c == "{" then
          depth = depth + 1
        elseif c == "}" then
          depth = depth - 1
        end
      end

      if depth == 0 and i > start_line then
        break
      end
    end
    -- mostras contenido
    local contents = { "```ts" }
    vim.list_extend(contents, lines)
    table.insert(contents, "```")

    vim.lsp.util.open_floating_preview(contents, "typescript", {
      border = "rounded",
      max_width = 80,
      max_height = 20,
      focusable = false,
      close_events = { "CursorMoved", "InsertEnter", "BufLeave" },
      -- Esto copia el estilo del hover oficial de LSP
      winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
    })
  end)
end

return M
