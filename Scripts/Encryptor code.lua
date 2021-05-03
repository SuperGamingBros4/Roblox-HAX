local input = _G.input
function encrypt()
    local output = input:gsub(".", function(String) return("\\") .. String:byte() end)
    setclipboard(output)
    print("Encrypted, Encrypted script copied to your clipboard.")
end
function returndecrypt()
   return(_G.input)
end
function decrypt()
    setclipboard(""..returndecrypt())
    print("Decrypted, Decrypted script copied to your clipboard.")
end
