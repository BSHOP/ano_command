local config = AnoConfig

local function Anonymous(ply, args)
    if args == "" then
        DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", ""))
        return ""
    end
    local DoSay = function(text)
        if text == "" then
            DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", ""))
            return
        end
        if ply:IsStaff() then
            for k,v in pairs(player.GetAll()) do    
                DarkRP.talkToPerson(v, config.colorprefixe, config.chatprefixe .. " " .. ply:Nick(), Color(255, 255, 255, 255), text, ply)
            end
        else
            for k,v in pairs(player.GetAll()) do
                DarkRP.talkToPerson(v, config.colorprefixe, config.chatprefixe, Color(255, 255, 255, 255), text, ply)

            end
        end

    end
    return args, DoSay
end
DarkRP.defineChatCommand(config.cmd, Anonymous, 1.5)



DarkRP.declareChatCommand{
	command = config.cmd,
	description = "Speak in unknown person",
	delay = 1.5
}
