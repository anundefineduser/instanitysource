-- im lazy lmaoooo https://github.com/ShadowMario/FNF-PsychEngine/issues/5994
local notePositions = {}

function onCreatePost()
    notePositions = {
        defaultPlayerStrumX0,
        defaultPlayerStrumX1,
        defaultPlayerStrumX2,
        defaultPlayerStrumX3,
        defaultOpponentStrumX0,
        defaultOpponentStrumX1,
        defaultOpponentStrumX2,
        defaultOpponentStrumX3
    }
    
    for i = 1, 8, 1 do
        noteTweenX('noteTween'..i, i-1, notePositions[i], 0.01, 'linear')
    end
    
    makeAnimatedLuaSprite("you", "interveneyou", 0, -100)
    addAnimationByPrefix("you", "you", "me!")
    setObjectCamera("you", "camHUD")
    screenCenter("you", "x")
    addLuaSprite("you")
    setProperty("you.alpha", 0)
    
end

function onSongStart()
    doTweenAlpha("youtween", "you", 1, 1, "circOut")
    runTimer("youtimer", 4, 1)
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == "youtimer" then
        doTweenAlpha("youtween2", "you", 0, 1, "circOut")
    end
end

function onUpdatePost( elapsed )
    setProperty("healthBar.flipX", false)
    setProperty("healthBar.percent", 100 - ((getHealth() / 2) * 100))
    setProperty("iconP2.flipX", true)
    setProperty("iconP2.x", getProperty("healthBar.barCenter") + (150 * getProperty("iconP2.scale.x") - 150) / 2 - 26)
    setProperty("iconP1.flipX", true)
    setProperty("iconP1.x", getProperty("healthBar.barCenter") - (150 * getProperty("iconP1.scale.x")) / 2 - 26 * 2)
    setProperty("healthBar.flipX", true)
    setProperty("healthBar.percent", (getHealth() / 2) * 100)
end