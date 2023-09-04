return {
	-- ref: https://wezfurlong.org/wezterm/config/lua/SshDomain.html

	ssh_domains = {
		{
			-- This name identifies the domain
			name = "dev",
			-- The hostname or address to connect to. Will be used to match settings
			-- from your ssh config file
			remote_address = "9.135.12.153",
			-- The username to use on the remote host
			username = "monkiqchen",

			multiplexing = "None",

			ssh_option = {
				identityfile = "~/.ssh/id_rsa.pub",
			},

			default_prog = { "zsh" },
		},
	},
	-- ref: https://wezfurlong.org/wezterm/multiplexing.html#unix-domains
	unix_domains = {},

	-- ref: https://wezfurlong.org/wezterm/config/lua/WslDomain.html
	wsl_domains = {
		{
			name = "WSL:Ubuntu",
			distribution = "Ubuntu",
			username = "kevin",
			default_cwd = "/home/kevin",
			default_prog = { "fish" },
		},
	},
}
