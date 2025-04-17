function Update()
    local data = {};
    local index = 0;
    local optionName = SELF:GetOption("OptionName");

    for str in string.gmatch(io.open(SKIN:ReplaceVariables('#SKINS#Cache.ini')):read("*all"), "[^\n]+") do
        if (index == 0) then index = 1;
        else
            local data = {str:match("([^=]+)=([^=]+)")};
            if (data[1] == optionName) then
                local num = tonumber(data[2]);
                if (num == nil) then
                    return data[2];
                end
                return num;
            end
        end
    end
    
    local defaultValue = SELF:GetOption("DefaultValue");
    
    if defaultValue == nil then
        return nil;
    end
    
    local num = tonumber(defaultValue);

    if (num == nil) then
        return defaultValue;
    end

    return num;
end