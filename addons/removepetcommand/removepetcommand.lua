function SET_PETCOMMAND_TYPE_HOOKED(frame, typeStr, handle)
    -- _G["SET_PETCOMMAND_TYPE_OLD"](frame, typeStr, handle);
    
    -- Do nothing here instead of loading that annoying ring menu
end

local SET_PETCOMMAND_TYPEHook = "SET_PETCOMMAND_TYPE";

if _G["SET_PETCOMMAND_TYPE_OLD"] == nil then
    _G["SET_PETCOMMAND_TYPE_OLD"] = _G[SET_PETCOMMAND_TYPEHook];
    _G[SET_PETCOMMAND_TYPEHook] = SET_PETCOMMAND_TYPE_HOOKED;
else
    _G[SET_PETCOMMAND_TYPEHook] = SET_PETCOMMAND_TYPE_HOOKED;
end

ui.SysMsg("Pet ring command menu removed!");