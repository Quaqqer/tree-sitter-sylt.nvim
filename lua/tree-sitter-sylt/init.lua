local M = {
	_initialized = false,
}

local project_path = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":p:h:h:h")

function M.setup()
	if M._initialized then
		return
	end

	local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

	parser_config.sylt = {
		install_info = {
			url = "https://github.com/Quaqqer/tree-sitter-sylt",
			files = { "src/parser.c", "src/scanner.c" },
			branch = "main",
		},
		maintainers = { "@Quaqqer" },
	}

	local query_files = vim.fn.globpath(project_path, "queries/lua/**", nil, true)

	for _, query_file in ipairs(query_files) do
		local query_name = vim.fn.fnamemodify(query_file, ":t:r")
		local query_content = table.concat(vim.fn.readfile(query_file), "\n")
		vim.treesitter.set_query("sy", query_name, query_content)
	end
end

M.setup()

return M
