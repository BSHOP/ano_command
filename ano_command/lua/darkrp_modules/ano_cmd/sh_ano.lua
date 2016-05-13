local MetaPlayer = FindMetaTable("Player")

local Staff = {"superadmin", "admin"}

AnoConfig = { 
	colorprefixe = Color(255, 0, 0, 255),
	chatprefixe = "[Anonymous]",
	cmd = "ano"
}

function MetaPlayer:IsStaff()
	for _, v in pairs(Staff) do
		if self:IsUserGroup(v) then
			return true
		end
	end

	return false
end


