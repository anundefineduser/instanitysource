function onCreate()
	-- background shit
	makeLuaSprite('intervenepodium', 'intervenepodium', -1250, -200);
	setLuaSpriteScrollFactor('intervenepodium', 0.9, 0.9);
	scaleObject('intervenepodium', 0.62, 0.50);
	addLuaSprite('intervenepodium', false);

	endnoteTweenAlpha(i+0, i, math.floor, 0.3)
end

function onCreatePost()
	makeAnimatedLuaSprite("knife", "intervene/knife_intervene", 230, -150)
    addAnimationByPrefix("knife", "knife", "knife idle")
	setProperty("knife.scale.x", .4)
	setProperty("knife.scale.y", .4)
	setScrollFactor('knife', 0.9, 0.9);
    addLuaSprite("knife")
	
	makeAnimatedLuaSprite("pb", "intervene/paintbrush_intervene", -50, 140)
    addAnimationByPrefix("pb", "pb", "PAINTBRUSH_IDLE")
	setProperty("pb.scale.x", .4)
	setProperty("pb.scale.y", .4)
	setScrollFactor('pb', 0.9, 0.9);
    addLuaSprite("pb", true)

	close(nil)
end