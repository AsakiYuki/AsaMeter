function setToWebNowPlayingPosition()
    y = SKIN:GetY();
    if y >= 200 then
        SKIN:Bang('!SetWindowPosition', 
            SKIN:GetX() - 4,
            y,
            0, '0B', 'AsaMeter\\SoundVisualizer'
        );
    else
        setToTaskbar();
    end
    return 0;
end

function setToTaskbar()
    SKIN:Bang('!SetWindowPosition', 
        '((#SCREENAREAWIDTH# - #WebNowPlayingWidth#) / 2 - 1)',
        '(#SCREENAREAHEIGHT#)',
        0, '0B', 'AsaMeter\\SoundVisualizer'
    );
    
    return 0;
end