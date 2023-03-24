Readfile(function(foldername, filename)
	if readfile and writefile then
		if isfile(foldername .. "/" .. filename) then
			return readfile(foldername .. "/" .. filename)
		end
	end
end)

Writefile(function(foldername, filename, text)
	if readfile and writefile then
		if isfile(foldername .. "/" .. filename) then
			writefile(foldername .. "/" .. filename , text)
		else 
			makefolder(foldername) 
			writefile(foldername .. "/" .. filename , text)
		end
	end
end)

Getexploit(function()
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
end)
