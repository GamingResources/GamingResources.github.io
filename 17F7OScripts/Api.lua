local api = {
	["GetPlace"] = function()
		return game.PlaceId
	end,
	["GetJobId"] = function()
		return game.JobId
	end,
	["GetHWID"] = function()
		return game:GetService("RbxAnalyticsService"):GetClientId()
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
	['ScriptLoadedT'] = function()
		print("True")
    ['ScriptLoadedF'] = function()
			print("False")
	['DInvite'] = function()
				setclipboard("discord.gg/bugatti")
				game.StarterGui:SetCore("SendNotification", {
					Title = "Done!";
					Text = "Discord Invite Copied To Clipboard!";
					Icon = "";
					Duration = 5;
				})
			end
		end
	end
}

return api
