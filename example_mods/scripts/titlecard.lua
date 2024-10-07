function onCreatePost()
    makeLuaSprite("tc", "titlecards/" .. string.lower( songPath ))
    setProperty("tc.scale.x", 0.5)
    setProperty("tc.scale.y", 0.5)
    setObjectCamera("tc", "camHUD")
    addLuaSprite("tc", true)
    screenCenter("tc")
    if string.lower(songPath) == "salutations" then
        setProperty("tc.x", getProperty("tc.x") + 440 + 500)
    else
        setProperty("tc.x", getProperty("tc.x") + 490 + 500)
    end
    setProperty("tc.y", getProperty("tc.y") + 120)
end

function onSongStart()
    if songPath == "intervene" then
        doTweenX("startcard", "tc", getProperty("tc.x") - 500, 1, "expoOut")
        runTimer("cardtimer", 2, 1)
    else
        doTweenX("startcard", "tc", getProperty("tc.x") - 500, 2, "quartOut")
        runTimer("cardtimer", 4, 1)
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == "cardtimer" then
        if songPath == "intervene" then
            doTweenX("endcard", "tc", getProperty("tc.x") + 500, 6, "circIn")
        else
            doTweenX("endcard", "tc", getProperty("tc.x") + 500, 4, "quartIn")
        end
    end
end