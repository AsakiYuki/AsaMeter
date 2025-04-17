function Update()
    
    SKIN:Bang("!CommandMeasure", "MeasureCache", [[
        local currentDay = SKIN:GetMeasure('MeasureDayInMonth'):GetValue();
        local lastDay = getCacheValue('Day', 0);
        local netUpload = SKIN:GetMeasure('MeasureNetUpload'):GetValue();
        local netDownload = SKIN:GetMeasure('MeasureNetDownload'):GetValue();

        if (lastDay == currentDay) or (currentDay == 0) then
            addCacheValue('TotalUploadData', netUpload, 0);
            addCacheValue('TotalDownloadData', netDownload, 0);
        else
            writeCache('Day', currentDay);
            writeCache('TotalUploadData', netUpload);
            writeCache('TotalDownloadData', netDownload);
        end
    ]]);
end