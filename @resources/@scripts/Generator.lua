function Initialize()
    local readFile = io.open(SKIN:ReplaceVariables(SELF:GetOption("ReadFile"))):read("*all");
    local skin = {};
    local index = 1;

    local replaceString = SELF:GetOption("Substitution");
    local startIndex = SELF:GetNumberOption("Start") + 1;
    local endIndex = SELF:GetNumberOption("End") + 1;

    for i = startIndex, endIndex do
        skin[index] = string.gsub(readFile, replaceString, i - 1);
        index = index + 1;
    end

    local writeFile = io.open(SKIN:ReplaceVariables(SELF:GetOption("WriteFile")), "w");
    writeFile:write(table.concat(skin, "\n\n"));
    writeFile:close();
end