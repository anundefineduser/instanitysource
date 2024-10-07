function onCreate()     
    if not middlescroll then
         setPropertyFromClass('backend.ClientPrefs', 'data.middleScroll', true)
    end
end

function onDestroy() -- end of the song or you exited
    if not middlescroll then
        setPropertyFromClass('backend.ClientPrefs', 'data.middleScroll', false)
    end
end

function onCreatePost()
    makeLuaSprite("bg", "unfair/unfairbg")
    setProperty("bg.scale.x", (screenWidth / getProperty("bg.width")) / getProperty("camGame.zoom"));
    setProperty("bg.scale.y", (screenHeight / getProperty("bg.height")) / getProperty("camGame.zoom"));
    setScrollFactor("bg", 0, 0)
    setObjectCamera("bg", 'camGame')
    addLuaSprite("bg", false)
    screenCenter("bg")

    makeLuaSprite("fg", "unfair/final4")
    setProperty("fg.scale.x", screenWidth / getProperty("fg.width"));
    setProperty("fg.scale.y", screenHeight / getProperty("fg.height"));
    setScrollFactor("fg", 0, 0)
    setObjectCamera("fg", 'camHUD')
    addLuaSprite("fg", false)
    screenCenter("fg")

    setProperty("gf.visible", false)

    makeAnimatedLuaSprite("td", "unfair/td_unfair", 0, 280)
    addAnimationByPrefix("td", "TD_IDLE", "TD_IDLE")
    addLuaSprite("td", true)
    setProperty("td.x", getProperty("td.x") - getProperty("dad.width") / 1.2)

    makeAnimatedLuaSprite("rocky", "unfair/rocky_unfair", getProperty("bf.x"), getProperty("dad.y") - 50)
    addAnimationByPrefix("rocky", "ROCKY_IDLE", "ROCKY_IDLE")
    addLuaSprite("rocky", true)
    setProperty("rocky.x", getProperty("rocky.x") + 700)

    for i = 0,3 do
        setPropertyFromGroup('opponentStrums', i, 'y', -1300)
   end
end

function onUpdatePost(elapsed)
    setProperty("camFollow.x", getProperty("gf.x"))
    setProperty("camFollow.y", getProperty("gf.y"))
end