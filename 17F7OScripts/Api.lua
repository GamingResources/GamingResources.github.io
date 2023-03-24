local api = {
	["readfile"] = function(foldername, filename)
		if readfile and writefile then
			if isfile(foldername .. "/" .. filename) then
				return readfile(foldername .. "/" .. filename)
			end
		end
	end,
	["writefile"] = function(foldername, filename, text)
		if readfile and writefile then
			if isfile(foldername .. "/" .. filename) then
				writefile(foldername .. "/" .. filename , text)
			else 
				makefolder(foldername) 
				writefile(foldername .. "/" .. filename , text)
			end
		end
	end
}

return api
