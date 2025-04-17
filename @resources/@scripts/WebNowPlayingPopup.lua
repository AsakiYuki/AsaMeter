function Update()
    SKIN:Bang("!CommandMeasure", "MeasureCache", [[
        local title = SKIN:GetMeasure("MeasureWebNowPlayingTitle"):GetStringValue();
        local previousSong = getCacheValue("PreviousSong", "N/A");
        local artist = SKIN:GetMeasure("MeasureWebNowPlayingArtist"):GetStringValue();
        local previousArtist = getCacheValue("PreviousArtist", "N/A");

        if not ((title == previousSong) and (artist == previousArtist)) then
            writeCache("PreviousSong", title);
            writeCache("PreviousArtist", artist);
            
            SKIN:Bang('!DeactivateConfig', "AsaMeter\\@resources\\@skins\\Popup");
            SKIN:Bang('!ActivateConfig', "AsaMeter\\@resources\\@skins\\Popup", "Popup.ini");
        end
    ]])
end