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
   return(_G.input)
end
function decrypt()
    setclipboard(""..returndecrypt())
	print("Decrypted, Decrypted script copied to your clipboard.")
end
