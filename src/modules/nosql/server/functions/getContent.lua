---getContent
---@param fileName string
---@return string
---@public
function MOD_NoSQL:getContent(fileName)
    local resPath <const> = GetResourcePath(NCS.resourceName)
    local filePath <const> = ("%s%s.json"):format(("%s/data/"):format(resPath), fileName)
    local result <const> = self:readFile(filePath)
    if (result ~= nil) then
        return json.decode(result)
    else
        NCS:die(("getContent failed on file: %s"):format(filePath)) 
        return false
    end
end