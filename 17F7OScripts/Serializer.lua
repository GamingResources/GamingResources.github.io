local L_1_ = {
	spaces = 4,
	highlighting = false
}
local L_2_ = clonefunction;
local L_3_ = string;
local L_4_ = game;
local L_5_ = L_2_(L_3_.sub)
local L_6_ = L_2_(L_3_.format)
local L_7_ = L_2_(L_3_.rep)
local L_8_ = L_2_(L_3_.byte)
local L_9_ = L_2_(L_3_.match)
local L_10_ = L_2_(L_4_.GetFullName)
local L_11_ = L_2_(debug.getinfo)
local L_12_ = math.huge;
local L_13_ = L_2_(typeof)
local L_14_ = L_2_(pairs)
local L_15_ = L_2_(assert)
local L_16_ = L_2_(tostring)
local L_17_ = L_2_(table.concat)
local L_18_ = L_2_(getmetatable)
local L_19_ = L_2_(rawget)
local L_20_ = L_2_(rawset)
local L_21_ = L_7_(" ", L_1_.spaces or 4)
local L_22_;
local L_23_ = {
	Axes = true,
	BrickColor = true,
	CatalogSearchParams = true,
	CFrame = true,
	Color3 = true,
	ColorSequence = true,
	ColorSequenceKeypoint = true,
	DateTime = true,
	DockWidgetPluginGuiInfo = true,
	Enum = true,
	Faces = true,
	Instance = true,
	NumberRange = true,
	NumberSequence = true,
	NumberSequenceKeypoint = true,
	OverlapParams = true,
	PathWaypoint = true,
	PhysicalProperties = true,
	Random = true,
	Ray = true,
	RaycastParams = true,
	RaycastResult = true,
	Rect = true,
	Region3 = true,
	Region3int16 = true,
	TweenInfo = true,
	UDim = true,
	UDim2 = true,
	Vector2 = true,
	Vector2int16 = true,
	Vector3 = true,
	Vector3int16 = true
}
local function L_24_func(L_31_arg0)
	local L_32_, L_33_, L_34_ = L_18_(L_31_arg0)
	if not L_32_ or L_13_(L_32_) ~= "table" then
		return L_16_(L_31_arg0)
	end;
	L_34_ = L_19_(L_32_, "__tostring")
	L_20_(L_32_, "__tostring", nil)
	L_33_ = L_16_(L_31_arg0)
	L_20_(L_32_, "__tostring", L_34_)
	return L_33_
end;
local function L_25_func(...)
	local L_35_ = {}
	for L_36_forvar0, L_37_forvar1 in L_14_({
		...
	}) do
		local L_38_ = L_13_(L_37_forvar1)
		local L_39_ = #L_35_ + 1;
		if L_38_ == "string" then
			L_35_[L_39_] = L_6_("\27[32m\"%s\"\27[0m", L_37_forvar1)
		elseif L_38_ == "table" then
			L_35_[L_39_] = L_22_(L_37_forvar1, 0)
		else
			L_35_[L_39_] = L_24_func(L_37_forvar1)
		end
	end;
	return L_17_(L_35_, ", ")
end;
local function L_26_func(L_40_arg0)
	if L_11_ then
		local L_41_ = L_11_(L_40_arg0)
		local L_42_ = {}
		if L_41_.nparams then
			for L_43_forvar0 = 1, L_41_.nparams do
				L_42_[L_43_forvar0] = L_6_("p%d", L_43_forvar0)
			end;
			if L_41_.isvararg then
				L_42_[#L_42_ + 1] = "..."
			end
		end;
		return L_6_("function (%s) --[[ Function Name: \"%s\" ]] end", L_17_(L_42_, ", "), L_41_.namewhat or L_41_.name or "")
	end;
	return "function () end"
end;
local function L_27_func(L_44_arg0)
	local L_45_ = 1;
	local L_46_ = {}
	while L_45_ <= #L_44_arg0 do
		local L_47_ = L_5_(L_44_arg0, L_45_, L_45_)
		if L_47_ == "\n" then
			L_46_[L_45_] = "\\n"
		elseif L_47_ == "\t" then
			L_46_[L_45_] = "\\t"
		elseif L_47_ == "\"" then
			L_46_[L_45_] = "\\\""
		else
			local L_48_ = L_8_(L_47_)
			if L_48_ < 32 or L_48_ > 126 then
				L_46_[L_45_] = L_6_("\\%d", L_48_)
			else
				L_46_[L_45_] = L_47_
			end
		end;
		L_45_ = L_45_ + 1
	end;
	return L_17_(L_46_)
end;
local function L_28_func(L_49_arg0)
	if L_49_arg0 == L_12_ then
		return "math.huge"
	elseif L_49_arg0 == -L_12_ then
		return "-math.huge"
	end;
	return L_24_func(L_49_arg0)
end;
local function L_29_func(L_50_arg0, L_51_arg1)
	local L_52_ = L_13_(L_50_arg0)
	local L_53_ = L_50_arg0;
	if L_52_ == "string" then
		if L_9_(L_50_arg0, "[^_%a%d]+") then
			L_53_ = L_6_(L_1_.highlighting and "\27[32m\"%s\"\27[0m" or "\"%s\"", L_27_func(L_50_arg0))
		else
			return L_50_arg0
		end
	elseif L_52_ == "table" then
		L_51_arg1 = L_51_arg1 + 1;
		L_53_ = L_22_(L_50_arg0, L_51_arg1)
	elseif L_52_ == "number" or L_52_ == "boolean" then
		if L_1_.highlighting then
			L_53_ = L_6_("\27[33m%s\27[0m", L_28_func(L_50_arg0))
		else
			L_53_ = L_28_func(L_50_arg0)
		end
	elseif L_52_ == "function" then
		L_53_ = L_26_func(L_50_arg0)
	elseif L_52_ == "Instance" then
		L_53_ = L_10_(L_50_arg0)
	else
		L_53_ = L_24_func(L_50_arg0)
	end;
	return L_6_("[%s]", L_53_)
end;
L_22_ = function(L_54_arg0, L_55_arg1, L_56_arg2)
	L_56_arg2 = L_56_arg2 or {}
	if L_56_arg2[L_54_arg0] then
		return L_6_("\"%s -- recursive table\"", L_24_func(L_54_arg0))
	end;
	L_56_arg2[L_54_arg0] = true;
	L_55_arg1 = L_55_arg1 or 0;
	local L_57_ = {}
	local L_58_ = L_7_(L_21_, L_55_arg1)
	local L_59_ = L_7_(L_21_, L_55_arg1 + 1)
	local L_60_ = 0;
	for L_62_forvar0, L_63_forvar1 in L_14_(L_54_arg0) do
		local L_64_ = L_60_ + 1 ~= L_62_forvar0;
		local L_65_ = L_6_(L_64_ and "%s = " or "", L_29_func(L_62_forvar0, L_55_arg1))
		local L_66_ = L_13_(L_63_forvar1)
		local L_67_ = #L_57_ + 1;
		if L_66_ == "string" then
			L_57_[L_67_] = L_6_(L_1_.highlighting and "%s%s\27[32m\"%s\"\27[0m,\n" or "%s%s\"%s\",\n", L_59_, L_65_, L_27_func(L_63_forvar1))
		elseif L_66_ == "number" or L_66_ == "boolean" then
			L_57_[L_67_] = L_6_(L_1_.highlighting and "%s%s\27[33m%s\27[0m,\n" or "%s%s%s,\n", L_59_, L_65_, L_28_func(L_63_forvar1))
		elseif L_66_ == "table" then
			L_57_[L_67_] = L_6_("%s%s%s,\n", L_59_, L_65_, L_22_(L_63_forvar1, L_55_arg1 + 1, L_56_arg2))
		elseif L_66_ == "userdata" then
			L_57_[L_67_] = L_6_("%s%s newproxy(),\n", L_59_, L_65_)
		elseif L_66_ == "function" then
			L_57_[L_67_] = L_6_("%s%s%s,\n", L_59_, L_65_, L_26_func(L_63_forvar1))
		elseif L_66_ == "Instance" then
			L_57_[L_67_] = L_6_("%s%s%s,\n", L_59_, L_65_, L_10_(L_63_forvar1))
		elseif L_23_[L_66_] then
			L_57_[L_67_] = L_6_("%s%s%s.new(%s),\n", L_59_, L_65_, L_66_, L_24_func(L_63_forvar1))
		else
			L_57_[L_67_] = L_6_("%s%s\"%s\",\n", L_59_, L_65_, L_24_func(L_63_forvar1))
		end;
		L_60_ = L_60_ + 1
	end;
	local L_61_ = L_57_[#L_57_]
	if L_61_ then
		L_57_[#L_57_] = L_5_(L_61_, 0, -3) .. "\n"
	end;
	if L_60_ > 0 then
		if L_55_arg1 < 1 then
			return L_6_("{\n%s}", L_17_(L_57_))
		else
			return L_6_("{\n%s%s}", L_17_(L_57_), L_58_)
		end
	else
		return "{}"
	end
end;
local L_30_ = {}
function L_30_.Serialize(L_68_arg0)
	if L_13_(L_68_arg0) ~= "table" then
		error("invalid argument #1 to 'Serialize' (table expected)")
	end;
	L_15_(L_13_(L_68_arg0) == "table", "")
	return L_22_(L_68_arg0)
end;
function L_30_.FormatArguments(...)
	return L_25_func(...)
end;
function L_30_.FormatString(L_69_arg0)
	if L_13_(L_69_arg0) ~= "string" then
		error("invalid argument #1 to 'FormatString' (string expected)")
	end;
	return L_27_func(L_69_arg0)
end;
function L_30_.UpdateConfig(L_70_arg0)
	L_15_(L_13_(L_70_arg0) == "table", "invalid argument #1 to 'UpdateConfig' (table expected)")
	L_1_.spaces = L_70_arg0.spaces or 4;
	L_1_.highlighting = L_70_arg0.highlighting;
	L_21_ = L_7_(" ", L_1_.spaces or 4)
end;
return L_30_
