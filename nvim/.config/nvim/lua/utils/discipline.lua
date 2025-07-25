local M = {}

local enabled = false
local count = 0
local notify_id ---@type integer?
local timer = nil
local threshold = 10
local keys = { "h", "j", "k", "l", "+", "-" }
local last_notify_time = 0
local notify_cooldown = 2 * 1e9 -- 2 seconds in nanoseconds

---Only notifies if cooldown has passed
local function notify_once(message, level, opts)
	local now = vim.loop.hrtime()
	if now - last_notify_time > notify_cooldown then
		last_notify_time = now
		notify_id = vim.notify(
			message,
			level or vim.log.levels.INFO,
			vim.tbl_extend("force", {
				replace = notify_id,
			}, opts or {})
		)
	end
end

local function cowboy_handler(key)
	return function()
		if vim.v.count > 0 then
			count = 0
			return key
		end

		count = count + 1

		if count >= threshold then
			notify_once("Hold it Cowboy!", vim.log.levels.WARN, {
				icon = "🤠",
				keep = function()
					return count >= threshold
				end,
			})
			return "<Ignore>"
		end

		if timer then
			timer:stop()
			timer:start(2000, 0, function()
				count = 0
			end)
		end

		return key
	end
end

function M.enable()
	if enabled then
		return
	end
	enabled = true
	count = 0
	last_notify_time = 0
	notify_id = nil
	timer = vim.loop.new_timer()

	for _, key in ipairs(keys) do
		vim.keymap.set("n", key, cowboy_handler(key), {
			expr = true,
			silent = true,
			desc = "Cowboy mode key",
		})
	end

	vim.notify("🤠 Cowboy mode enabled!", vim.log.levels.INFO)
end

function M.disable()
	if not enabled then
		return
	end
	enabled = false

	for _, key in ipairs(keys) do
		pcall(vim.keymap.del, "n", key)
	end

	if timer then
		timer:stop()
		timer:close()
		timer = nil
	end

	count = 0
	last_notify_time = 0
	notify_id = nil

	vim.notify("🛑 Cowboy mode disabled!", vim.log.levels.INFO)
end

function M.toggle()
	if enabled then
		M.disable()
	else
		M.enable()
	end
end

return M
