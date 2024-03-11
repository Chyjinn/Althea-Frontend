require('./token.js');
require('./seats.js');
mp.game1.weapon.unequipEmptyWeapons = false;



/*
//Load texture dictionary for example
if(!mp.game.graphics.hasStreamedTextureDictLoaded("mpweaponsgang0"))
	mp.game.graphics.requestStreamedTextureDict("mpweaponsgang0", true);
while(!mp.game.graphics.hasStreamedTextureDictLoaded("mpweaponsgang0"))
	mp.game.wait(0);

//Create object for example
function CreateModel(model, pos, rot)
{
	if(!mp.game.streaming.hasModelLoaded(mp.game.joaat(model)))
		mp.game.streaming.requestModel(mp.game.joaat(model));
	while(!mp.game.streaming.hasModelLoaded(mp.game.joaat(model)))
		mp.game.wait(0);
	return mp.objects.new(mp.game.joaat(model), pos,
	{
		rotation: rot,
		alpha: 255,
		dimension: mp.players.local.dimension
	});
}

function CreateRenderTarget(name, model)
{
	if(!mp.game.ui.isNamedRendertargetRegistered(name))
		mp.game.ui.registerNamedRendertarget(name, false); //Register render target
	if(!mp.game.ui.isNamedRendertargetLinked(mp.game.joaat(model)))
		mp.game.ui.linkNamedRendertarget(mp.game.joaat(model)); //Link it to all models
	if(mp.game.ui.isNamedRendertargetRegistered(name))
		return mp.game.ui.getNamedRendertargetRenderId(name); //Get the handle
	return -1;
}

function RenderThings(id)
{
	mp.game.ui.setTextRenderId(id); //Set render ID of render target
	mp.game.graphics.set2dLayer(4); //Only layer 4 works
	
	//Scaleforms work too although the majority have messed up scaling

	//Draw sprites. The layering for this is last drawn is the most top element
	mp.game.graphics.drawSprite(textdict,textname, 0.5, 0.5, -scale, scale, 0, 255, 255, 255, 255);
	
	mp.game.ui.setTextRenderId(1); //Do not forget to reset the render ID. 1 is always the default render target the game uses
}

var TargetsToRender = [];
var scale = 0;
var textdict;
var textname;
var br;

mp.keys.bind(69, false, MakePhone);
	
	
	async function MakePhone()
	{
	var pos = mp.players.local.position;
	let bone = mp.players.local.getBoneIndex = 57005;
	pos.z += 1;
	br = mp.browsers.newHeadless('package://frontend/auth/test.html',1920,1080);
	scale = br.headlessTextureHeightScale;
	textdict = br.headlessTextureDict;
	textname = br.headlessTextureName;
	br.active = true;

	var id = CreateRenderTarget("cinscreen", "v_ilev_cin_screen");
	if(id != -1)
	{
		TargetsToRender.push(id);
		mp.gui.chat.push("Render target created.");
	}
	else
		mp.gui.chat.push("Could not create render target.");
		
	}
	

mp.events.add("render", () =>
{
	for(var i = 0; i < TargetsToRender.length; i++)
	{
		RenderThings(TargetsToRender[i]);
	}
});

//91-es bone-hoz akarjuk attacholni a tabletet

*/