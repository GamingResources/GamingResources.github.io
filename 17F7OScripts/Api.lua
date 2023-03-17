local api = {
	["GetPlace"] = function()
		return game.PlaceId
	end,
	["GetJobId"] = function()
		return game.JobId
	end,
	["GetUserName"] = function()
		return game.Players.LocalPlayer.Name
	end,
	["GetUserId"] = function()
		return game.Players.LocalPlayer.userId
	end,
	["ReadFile"] = function(foldername, filename)
		if readfile and writefile then
			if isfile(foldername .. "/" .. filename) then
				return readfile(foldername .. "/" .. filename)
			end
		end
	end,
	["WriteFile"] = function(foldername, filename, text)
		if readfile and writefile then
			if isfile(foldername .. "/" .. filename) then
				writefile(foldername .. "/" .. filename , text)
			else 
				makefolder(foldername) 
				writefile(foldername .. "/" .. filename , text)
			end
		end
	end,
	["IsExist"] = function(obj)
		if obj ~= nil then
			return true
		end
	end,
	["IsSynapse"] = function()
		if syn then
			return true
		else
			return false
		end
	end,
	['IsKrnl'] = function()
		if Krnl then
			return true
		else
			return false
		end
	end,
	["GetBlacklist"] = function()
		if syn then
			if game.Players.LocalPlayer.userId == 1 then
				game:ShutDown()
			elseif game.Players.LocalPlayer.userId == 2 then 
				game:ShutDown()
			elseif game.Players.LocalPlayer.userId == 3 then 
				game:ShutDown()
			elseif game.Players.LocalPlayer.userId == 4 then 
				game:ShutDown()
			end
		end
	end,
	['GetExploit'] = function()
		local exploit =
        (syn and not is_sirhurt_closure and not pebc_execute and "Synapse X") or
        (SENTINEL_LOADED and "Sentinel") or
        (is_sirhurt_closure and "Sirhurt") or
        (PROTOSMASHER_LOADED and "ProtoSmasher") or
        (KRNL_LOADED and "Krnl") or
        (WRDAPI and "WeAreDevs") or
        (isvm and "Proxo") or
        (shadow_env and "Shadow") or
        (jit and "EasyExploits") or
        (getreg()['CalamariLuaEnv'] and "Calamari") or
        (unit and "Unit") or
        (IS_VIVA_LOADED and "VIVA") or
        (IS_COCO_LOADED and "Coco") or
        (IsElectron and "Electron") or
        (getexecutorname and import and "Scriptware") or
        "No Exploit, Wtf?"
		return exploit
	end,
	['LoadScript'] = function()
		print("elo")
	['DSinvite'] = function()
			if syn then
				syn.request({
					Url = "http://127.0.0.1:6463/rpc?v=1",
					Method = "POST",
					Headers = {
						["Content-Type"] = "application/json",
						["Origin"] = "https://discord.com"
					},
					Body = game:GetService("HttpService"):JSONEncode({
						cmd = "INVITE_BROWSER",
						args = {
							code = "bugatti"
						},
						nonce = game:GetService("HttpService"):GenerateGUID(false)
					}),
				})
				setclipboard("https://discord.gg/bugatti")
			else
				setclipboard("https://discord.gg/bugatti")
			end
		end
	end
}

return api
