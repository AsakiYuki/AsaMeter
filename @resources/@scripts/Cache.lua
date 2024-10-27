function getCacheValue(optionName, defaultValue)
    local data = {};
    local index = 0;

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
    
    if defaultValue == "" then
        return nil;
    end
    
    local num = tonumber(defaultValue);

    if (num == nil) then
        return defaultValue;
    end

    return num;
end

function writeCache(optionName, value)
    SKIN:Bang('!WriteKeyValue', 'Cache', optionName, value, SKIN:ReplaceVariables('#SKINS#Cache.ini'));
end

function addCacheValue(optionValue, addValue, defaultValue)
    writeCache(optionValue, addValue + getCacheValue(optionValue, defaultValue));
end