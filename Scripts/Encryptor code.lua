local input = _G.input
local outputtable = {}
function encrypt()
    for i=1, input:len() do
        table.insert(outputtable, string.byte(input, i))
    end
    local output = table.concat(outputtable, "\\")
    _G.outputtable = outputtable
    _G.output = output
    setclipboard("\\"..output)
    print("Encrypted, Encrypted script copied to your clipboard.")
end
function returndecrypt()
	local output = ""
    for i, v in pairs(input:split("\\")) do
    	if v ~= "" and v ~= nil then
    		output = output..v:char()
    	end
    end
    return output
end
function decrypt()
    setclipboard(""..returndecrypt())
    print("Decrypted, Decrypted script copied to your clipboard.")
end
