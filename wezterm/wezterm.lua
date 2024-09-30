-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'nord'
--config.font = wezterm.font 'UDEV Gothic 35NFLG'
-- config.font_size = 11.5
--config.use_ime = false
-- config.enable_tab_bar = false
config.tab_bar_at_bottom = true
config.leader = { key = 's', mods = 'CTRL', timeout_milliseconds = 1000 }

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.use_fancy_tab_bar = false
config.colors = {
	-- cursor_bg= "#4C566A",
	tab_bar = {
		background = "#3b4252",

		active_tab = {
			bg_color = "#88c0d0",
			fg_color = "#3b4252",
			intensity = "Normal",
			underline = "None",
			italic = false,
			strikethrough = false,
		},

		inactive_tab = {
			bg_color = "#4c566a",
			fg_color = "#eceff4",
			intensity = "Normal",
			underline = "None",
			italic = false,
			strikethrough = false,
		},

		-- inactive_tab_hover = {
		--   bg_color = "#1b1f2f",
		--   fg_color = "#c6c8d1",
		--   intensity = "Normal",
		--   underline = "None",
		--   italic = true,
		--   strikethrough = false,
		-- },

		new_tab = {
			bg_color = "#434c5e",
			fg_color = "#c6c8d1",
			italic = false
		},

		new_tab_hover = {
			bg_color = "#2e3440",
			fg_color = "#c6c8d1",
			italic = false
		},
	}
}

config.keys = {
	{ key = "[", mods = "LEADER", action = wezterm.action.ActivateCopyMode },
	{ key = 'p', mods = 'LEADER', action = wezterm.action.ActivateTabRelative(-1) },
	{ key = 'n', mods = 'LEADER', action = wezterm.action.ActivateTabRelative(1) },
	{
		key = 'H',
		mods = 'LEADER',
		action = wezterm.action.AdjustPaneSize { 'Left', 5 },
	},
	{
		key = 'J',
		mods = 'LEADER',
		action = wezterm.action.AdjustPaneSize { 'Down', 5 },
	},
	{ key = 'K', mods = 'LEADER', action = wezterm.action.AdjustPaneSize { 'Up', 5 } },
	{
		key = 'L',
		mods = 'LEADER',
		action = wezterm.action.AdjustPaneSize { 'Right', 5 },
	},
	{
		key = 'b',
		mods = 'LEADER',
		action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
	},
	{
		key = 'v',
		mods = 'LEADER',
		action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
	},
	{ key = "h", mods = "LEADER", action = wezterm.action { ActivatePaneDirection = "Left" } },
	{ key = "j", mods = "LEADER", action = wezterm.action { ActivatePaneDirection = "Down" } },
	{ key = "k", mods = "LEADER", action = wezterm.action { ActivatePaneDirection = "Up" } },
	{ key = "l", mods = "LEADER", action = wezterm.action { ActivatePaneDirection = "Right" } },
	{ key = "c", mods = "LEADER", action = wezterm.action { SpawnTab = "CurrentPaneDomain" } },
	{ key = 'L', mods = 'CTRL',   action = wezterm.action.ShowDebugOverlay },
}
config.unix_domains = {
	{
		name = 'unix',
	},
}

-- This causes `wezterm` to act as though it was started as
-- `wezterm connect unix` by default, connecting to the unix
-- domain on startup.
-- If you prefer to connect manually, leave out this line.
--config.default_gui_startup_args = { 'connect', 'unix' }
config.inactive_pane_hsb = {
	saturation = 0.9,
	brightness = 0.5,
}
-- config.window_background_opacity = 0.9
-- config.window_background_image = os.getenv('HOME')..'/Pictures/photo_2023-12-04_11-30-18.jpg'
-- config.window_background_opacity = 0.5
-- config.window_background_image_hsb = {
--   -- Darken the background image by reducing it to 1/3rd
--   brightness = 0.2,
--
--   -- You can adjust the hue by scaling its value.
--   -- a multiplier of 1.0 leaves the value unchanged.
--   hue = 1.0,
--
--   -- You can adjust the saturation also.
--   saturation = 1.0,
-- }


--config.set_environment_variables = {
-- This changes the default prompt for cmd.exe to report the
-- current directory using OSC 7, show the current time and
-- the current directory colored in the prompt.
--	SSH_AUTH_SOCK = os.getenv('XDG_RUNTIME_DIR') .. '/gcr/ssh'
--}
config.default_domain = "WSL:Debian"
--config.treat_east_asian_ambiguous_width_as_wide = true
-- and finally, return the configuration to wezterm
return config
