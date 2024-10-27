function setupSkin(file, skin, x, y, zPos, draggable, clickThrough) 
    SKIN:Bang('!DeactivateConfig', skin);
    SKIN:Bang('!ActivateConfig', skin, file);
    SKIN:Bang('!SetWindowPosition', x, y, 0, 0, skin);
    SKIN:Bang('!ZPos', zPos, skin);
    SKIN:Bang('!Draggable', draggable, skin);
    SKIN:Bang('!ClickThrough', clickThrough, skin);
end

function Initialize()
    -- Setup skin
    setupSkin(
        'modern.ini', 'AsaMeter\\SystemStatus',
        '4', '(#SCREENAREAHEIGHT# - 44)',
        2, 0, 1
    );

    setupSkin(
        'TopLeft.ini', 'AsaMeter\\Clock',
        75, 75, -2, 0, 1
    );

    setupSkin(
        'Content.ini', 'AsaMeter\\DataUsedToday',
        10, "(#SCREENAREAHEIGHT# - 115)", -2, 0, 1
    );

    setupSkin(
        'modern.ini', 'AsaMeter\\WebNowPlaying',
        '((#SCREENAREAWIDTH# - #WebNowPlayingWidth#) / 2)',
        '(#SCREENAREAHEIGHT# - #WebNowPlayingY#)',
        -2, 0, 0
    );

    setupSkin(
        'modern.ini', 'AsaMeter\\SoundVisualizer',
        '((#SCREENAREAWIDTH# - #WebNowPlayingWidth#) / 2 - 1)',
        '(#SCREENAREAHEIGHT# - #WebNowPlayingY# - 175)', -2, 0, 1
    );

    setupSkin(
        'modern.ini', 'AsaMeter\\MSIAfterBurner',
        '((#SCREENAREAWIDTH# - 150) / 2)',
        '(5)', 2, 0, 1
    );
    
    setupSkin(
        'Popup.ini', 'AsaMeter\\@resources\\@skins\\Popup',
        '(#SCREENAREAWIDTH# - 655)',
        5, 2, 0, 1
    );

    -- Pre Active and Disable this skin
    SKIN:Bang('!ActivateConfig', "AsaMeter\\WebNowPlayingPopup", "Runtime.ini");
    SKIN:Bang('!DeactivateConfig');
end