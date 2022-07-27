-- settings for lualine
local function getwords()
    if vim.bo.filetype == "md" or vim.bo.filetype == "markdown" or vim.bo.filetype == "txt" then
        return tostring(vim.fn.wordcount().words)
    else
        return ""
    end
end

local function scstatus()
			if vim.bo.filetype == "supercollider" then
				stat = vim.fn["scnvim#statusline#server_status"]()
				stat = stat:gsub("%%", "♪")
				return stat
			else
				return ""
			end
		end

require('lualine').setup {
    options = {
        icons_enabled = false
    },
    sections = {
        lualine_c = { 'filename', scstatus },
        lualine_x = { 'filetype' },
        lualine_y = { 'progress', getwords } 
        }
}
