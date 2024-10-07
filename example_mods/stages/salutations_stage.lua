function onCreate()
	-- background shit
	makeLuaSprite('salutesky', 'salutesky', -1250, -200);
	setLuaSpriteScrollFactor('salutesky', 0.9, 0.9);
	scaleObject('salutesky', 0.62, 0.50);
	
	makeLuaSprite('salutebush', 'salutebush', -1250, -200);
	setLuaSpriteScrollFactor('salutebush', 0.9, 0.9);
	scaleObject('salutebush', 0.65, 0.50);

	makeLuaSprite('saluteground', 'saluteground', -1250, -200);
	setLuaSpriteScrollFactor('saluteground', 0.9, 0.9);
	scaleObject('saluteground', 0.65, 0.50);

	makeLuaSprite('salutetrees', 'salutetrees', -1250, -200);
	setLuaSpriteScrollFactor('salutetrees', 0.9, 0.9);
	scaleObject('salutetrees', 0.65, 0.50);

	-- sprites that only load if Low Quality is turned off

	addLuaSprite('salutesky', false);
	addLuaSprite('salutebush', true);
	addLuaSprite('saluteground', false);
	addLuaSprite('salutetrees', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
endnoteTweenAlpha(i+0, i, math.floor, 0.3)
   end