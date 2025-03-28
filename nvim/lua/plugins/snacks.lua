return {
	"snacks.nvim",
	keys = function()
		return {
			{
				"<leader>,",
				function()
					Snacks.picker.buffers()
				end,
				desc = "Buffers",
			},
			{ "<leader>/", LazyVim.pick("grep"), desc = "Grep (Root Dir)" },
			{
				"<leader>:",
				function()
					Snacks.picker.command_history()
				end,
				desc = "Command History",
			},
			-- { "<leader><space>/", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
			-- { "<leader><space>.", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
			{
				"<leader>n",
				function()
					Snacks.picker.notifications()
				end,
				desc = "Notification History",
			},
			-- find
			{
				"<leader>fB",
				function()
					Snacks.picker.buffers()
				end,
				desc = "Buffers",
			},
			{
				"<leader>fb",
				function()
					Snacks.picker.buffers({ hidden = true, nofile = true })
				end,
				desc = "Buffers (all)",
			},
			{ "<leader>fc", LazyVim.pick.config_files(), desc = "Find Config File" },
			{ "<leader>fF", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
			{ "<leader>ff", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
			{
				"<leader>fg",
				function()
					Snacks.picker.git_files()
				end,
				desc = "Find Files (git-files)",
			},
			{ "<leader>fR", LazyVim.pick("oldfiles"), desc = "Recent" },
			{
				"<leader>fr",
				function()
					Snacks.picker.recent({ filter = { cwd = true } })
				end,
				desc = "Recent (cwd)",
			},
			{
				"<leader>fp",
				function()
					Snacks.picker.projects()
				end,
				desc = "Projects",
			},
			-- git
			{
				"<leader>gd",
				function()
					Snacks.picker.git_diff()
				end,
				desc = "Git Diff (hunks)",
			},
			{
				"<leader>gs",
				function()
					Snacks.picker.git_status()
				end,
				desc = "Git Status",
			},
			{
				"<leader>gS",
				function()
					Snacks.picker.git_stash()
				end,
				desc = "Git Stash",
			},
			-- Grep
			{
				"<leader>sb",
				function()
					Snacks.picker.lines()
				end,
				desc = "Buffer Lines",
			},
			{
				"<leader>sB",
				function()
					Snacks.picker.grep_buffers()
				end,
				desc = "Grep Open Buffers",
			},
			{ "<leader>sG", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
			{ "<leader>sg", LazyVim.pick("live_grep", { root = false }), desc = "Grep (cwd)" },
			{
				"<leader>sp",
				function()
					Snacks.picker.lazy()
				end,
				desc = "Search for Plugin Spec",
			},
			{
				"<leader>sW",
				LazyVim.pick("grep_word"),
				desc = "Visual selection or word (Root Dir)",
				mode = { "n", "x" },
			},
			{
				"<leader>sw",
				LazyVim.pick("grep_word", { root = false }),
				desc = "Visual selection or word (cwd)",
				mode = { "n", "x" },
			},
			-- search
			{
				'<leader>s"',
				function()
					Snacks.picker.registers()
				end,
				desc = "Registers",
			},
			{
				"<leader>s/",
				function()
					Snacks.picker.search_history()
				end,
				desc = "Search History",
			},
			{
				"<leader>sa",
				function()
					Snacks.picker.autocmds()
				end,
				desc = "Autocmds",
			},
			-- { "<leader>sc", function() Snacks.picker.command_history() end, desc = "Command History" },
			{
				"<leader>sc",
				function()
					Snacks.picker.commands()
				end,
				desc = "Commands",
			},
			{
				"<leader>sd",
				function()
					Snacks.picker.diagnostics()
				end,
				desc = "Diagnostics",
			},
			{
				"<leader>sD",
				function()
					Snacks.picker.diagnostics_buffer()
				end,
				desc = "Buffer Diagnostics",
			},
			{
				"<leader>sh",
				function()
					Snacks.picker.help()
				end,
				desc = "Help Pages",
			},
			{
				"<leader>sH",
				function()
					Snacks.picker.highlights()
				end,
				desc = "Highlights",
			},
			{
				"<leader>si",
				function()
					Snacks.picker.icons()
				end,
				desc = "Icons",
			},
			{
				"<leader>sj",
				function()
					Snacks.picker.jumps()
				end,
				desc = "Jumps",
			},
			{
				"<leader>sk",
				function()
					Snacks.picker.keymaps()
				end,
				desc = "Keymaps",
			},
			{
				"<leader>sl",
				function()
					Snacks.picker.loclist()
				end,
				desc = "Location List",
			},
			{
				"<leader>sM",
				function()
					Snacks.picker.man()
				end,
				desc = "Man Pages",
			},
			{
				"<leader>sm",
				function()
					Snacks.picker.marks()
				end,
				desc = "Marks",
			},
			{
				"<leader>sR",
				function()
					Snacks.picker.resume()
				end,
				desc = "Resume",
			},
			{
				"<leader>sq",
				function()
					Snacks.picker.qflist()
				end,
				desc = "Quickfix List",
			},
			{
				"<leader>su",
				function()
					Snacks.picker.undo()
				end,
				desc = "Undotree",
			},
			-- ui
			{
				"<leader>uC",
				function()
					Snacks.picker.colorschemes()
				end,
				desc = "Colorschemes",
			},
		}
	end,
	opts = {
		layout = {
			box = "vertical",
			backdrop = false,
			row = -1,
			width = 0,
			height = 0.4,
			border = "top",
			title = " {title} {live} {flags}",
			title_pos = "left",
			{ win = "input", height = 1, border = "bottom" },
			{
				box = "horizontal",
				{ win = "list", border = "none" },
				{ win = "preview", title = "{preview}", width = 0.6, border = "left" },
			},
		},
	},
}

