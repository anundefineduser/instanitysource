function onCreatePost()
        setProperty("scoreTxt.visible", false)
        setProperty("timeBar.visible", false)
        if version == '0.6.3' then
                setProperty("timeBarBG.visible", false)
        end
        setProperty("timeTxt.visible", false)
        makeLuaText("funny", "Sicks: 0\nGoods: 0\nBads: 0\nShits: 0\nMisses: 0", 500, 0.0, 300)
        setTextAlignment("funny", 'left')
        addLuaText("funny")
        setTextSize("funny", getProperty("timeTxt.size"))

        makeLuaText("timey", "", 500, getProperty("timeTxt.x"), getProperty("timeTxt.y"))
        setTextAlignment("timey", 'center')
        addLuaText("timey")
        setTextSize("timey", getProperty("timeTxt.size"))
        screenCenter("timey", 'x')
        setProperty("timey.alpha", 0.001)
        setProperty("funny.alpha", 0.001)

        
        makeLuaText("funny2", "Accuracy", 500, 770, 300)
        setTextAlignment("funny2", 'right')
        addLuaText("funny2")
        setTextSize("funny2", getProperty("timeTxt.size"))
        setProperty("funny2.alpha", 0.001)
        setProperty("healthBar.alpha", 0.001)
        if version == '0.6.3' then
                setProperty("healthBarBG.alpha", 0.001)
        end
        setProperty("iconP1.alpha", 0.001)
        setProperty("iconP2.alpha", 0.001)
end

function onUpdatePost(elapsed)
        setTextString("timey", formatTime(getSongPosition() - noteOffset))
        setTextString("funny", "Sicks: "..getPropertyFromGroup("ratingsData", 0, 'hits').."\nGoods: "..getPropertyFromGroup("ratingsData", 1, 'hits').."\nBads: "..getPropertyFromGroup("ratingsData", 2, 'hits').."\nShits: "..getPropertyFromGroup("ratingsData", 3, 'hits').."\nMisses: "..misses)
        
        setTextString("funny2", "Acc:\n"..truncateFloat(rating*100, 2).."%")
end

function onSongStart()
        doTweenAlpha("GDFGDASFADf", "timey", 1, 0.5, "sineInOut")
        doTweenAlpha("GDFGDASFADf2", "funny", 1, 0.5, "sineInOut")
        doTweenAlpha("GDFGDASFADf3", "funny2", 1, 0.5, "sineInOut")
        doTweenAlpha("GDFGDASFADf4", "healthBar", 1, 0.5, "sineInOut")
        if version == '0.6.3' then
                doTweenAlpha("GDFGDASFADf4", "healthBarBG", 1, 0.5, "sineInOut")
        end
        doTweenAlpha("GDFGDASFADf5", "iconP1", 1, 0.5, "sineInOut")
        doTweenAlpha("GDFGDASFADf6", "iconP2", 1, 0.5, "sineInOut")
end

function formatTime(millisecond)
        local seconds = math.floor(millisecond / 1000)

        return string.format("%01d:%02d", (seconds / 60) % 60, seconds % 60)  
end -- thanks trolmongus bbg ily

function truncateFloat(a, b)
        local mult = 10^(b or 0)
        return math.floor(a*mult)/mult
end