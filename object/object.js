
//középpont
var centerX = 0; 
var centerY = 0;

//X pozitív helye
var X_posX = 0;
var X_posY = 0;

//X negatív
var X_negX = 0;
var X_negY = 0;
//Y pozitív
var Y_posX = 0;
var Y_posY = 0;
//Y negatív
var Y_negX = 0;
var Y_negY = 0;
//Z pozitív  (felfelé)
var Z_posX = 0;
var Z_posY = 0;
//Z negatív (lefelé)
var Z_negX = 0;
var Z_negY = 0;

var svg = document.querySelector('#svg');   

var LineX = document.querySelector("#LineX");
var LineY = document.querySelector("#LineY");
var LineZ = document.querySelector("#LineZ");

var PosX = document.querySelector("#posX");
var PosY = document.querySelector("#posY");
var PosZ = document.querySelector("#posZ");

var moveAxis = '';
var clickStatus = false;

var currentX = 0;
var currentY = 0;


var moveButton = document.querySelector(".move");
var rotateButton = document.querySelector(".rotate");
var groundButton = document.querySelector(".ground");
var saveButton = document.querySelector(".save");
var closeButton = document.querySelector(".close");
var speedSlider = document.querySelector(".speed");

var px = document.querySelector("#px");
var py = document.querySelector("#py");
var pz = document.querySelector("#pz");

var rx = document.querySelector("#rx");
var ry = document.querySelector("#ry");
var rz = document.querySelector("#rz");

px.addEventListener('input', RefreshValues);
py.addEventListener('input', RefreshValues);
pz.addEventListener('input', RefreshValues);
rx.addEventListener('input', RefreshValues);
ry.addEventListener('input', RefreshValues);
rz.addEventListener('input', RefreshValues);

var mode = 'move';
closeButton.addEventListener('click', CloseEditor);
saveButton.addEventListener('click', SaveObject);

document.addEventListener('keydown', HandleKeyPress)

speedSlider.addEventListener('input', changeSpeed);

var speed = 20;

function changeSpeed(event)
{
    speed = speedSlider.value;
}
function HandleKeyPress(event)
{
    var key = event.key;
    console.log(key);
    if(key == 'Enter')
    {

    }
    else if(key == 'Backspace')
    {

    }
    else if(key == 'r')
    {
        if(mode == 'move') 
        {
            mode = 'rotate';
            PosX.classList.add('rotateicon');
            PosX.classList.remove('moveicon');
            PosY.classList.add('rotateicon');
            PosY.classList.remove('moveicon');
            PosZ.classList.add('rotateicon');
            PosZ.classList.remove('moveicon');

        }
        else if(mode == 'rotate')
        {
             mode = 'move';
             PosX.classList.remove('rotateicon');
             PosX.classList.add('moveicon');
             PosY.classList.remove('rotateicon');
             PosY.classList.add('moveicon');
             PosZ.classList.remove('rotateicon');
             PosZ.classList.add('moveicon');
        }
    }
    if(mode == 'move')
    {
        switch(key)
        {
            case 'ArrowUp':
                mp.trigger('client:MoveObject', speed, 'Y');
                break;
            case 'ArrowDown':
                mp.trigger('client:MoveObject', -speed, 'Y');
                break;
            case 'ArrowLeft':
                mp.trigger('client:MoveObject', -speed, 'X');
                break;
            case 'ArrowRight':
                mp.trigger('client:MoveObject', speed, 'X');
                break;
            case 'q':
                mp.trigger('client:MoveObject', -speed, 'Z');
                break;
            case 'e':
                mp.trigger('client:MoveObject', speed, 'Z');
                break;
        }
    }
    else if(mode = 'rotate')
    {
        switch(key)
        {
            case 'ArrowUp':
                mp.trigger('client:RotateObject', speed, 'Y');
                break;
            case 'ArrowDown':
                mp.trigger('client:RotateObject', -speed, 'Y');
                break;
            case 'ArrowLeft':
                mp.trigger('client:RotateObject', -speed, 'X');
                break;
            case 'ArrowRight':
                mp.trigger('client:RotateObject', speed, 'X');
                break;
            case 'q':
                mp.trigger('client:RotateObject', -speed, 'Z');
                break;
            case 'e':
                mp.trigger('client:RotateObject', speed, 'Z');
                break;
        }
    }

}

function SaveObject(event)
{
    mp.trigger('client:SaveObject');
}

function CloseEditor(event)
{
    mp.trigger('client:CloseObjectEditor');
}

function RefreshValues(event)
{
    console.log(event.target.value);
    mp.trigger('client:SetObject', event.target.id, event.target.value);
}


function ShowMover()
{
    PosX.addEventListener('mousedown', MouseDown);
    PosY.addEventListener('mousedown', MouseDown);
    PosZ.addEventListener('mousedown', MouseDown);

    moveButton.addEventListener('click', SwitchMode);
    rotateButton.addEventListener('click', SwitchMode);
    groundButton.addEventListener('click', SwitchMode);
    saveButton.addEventListener('click', SwitchMode);
}

function SwitchMode(event)
{
    event.preventDefault();
    console.log(event.target.id);
    switch(event.target.id)
    {
        case 'move':
            mode = 'move';
            PosX.classList.remove('rotateicon');
            PosX.classList.add('moveicon');
            PosY.classList.remove('rotateicon');
            PosY.classList.add('moveicon');
            PosZ.classList.remove('rotateicon');
            PosZ.classList.add('moveicon');
            break;
        case 'rotate':
            mode = 'rotate';
            PosX.classList.add('rotateicon');
            PosX.classList.remove('moveicon');
            PosY.classList.add('rotateicon');
            PosY.classList.remove('moveicon');
            PosZ.classList.add('rotateicon');
            PosZ.classList.remove('moveicon');
            break;
        case 'ground':
            mp.trigger('client:ObjectToGround');
            break;
        case 'save':
            break; 
    }
}


function UpdateObjectPos(x,y,z,rotax,rotay,rotaz)
{
    px.value = parseFloat((x).toFixed(5))
    py.value = parseFloat((y).toFixed(5))
    pz.value = parseFloat((z).toFixed(5))
    rx.value = parseFloat((rotax).toFixed(5))
    ry.value = parseFloat((rotay).toFixed(5))
    rz.value = parseFloat((rotaz).toFixed(5))
}



function MouseDown(event)
{
    event.preventDefault();
    if(event.target.id == 'posX')
    {
        moveAxis = 'X';
    }
    else if(event.target.id == 'posY')
    {
        moveAxis = 'Y';
    }
    else if(event.target.id == 'posZ')
    {
        moveAxis = 'Z';
    }
    clickStatus = true;
    currentX = event.pageX;
    currentY = event.pageY;
    document.addEventListener('mousemove', onMouseMove);   
    document.addEventListener('mouseup', MouseUp);    

    function MouseUp(){
        document.removeEventListener('mousemove', onMouseMove);
        clickStatus = false;
      }

      function onMouseMove(event){
        if(clickStatus){
          MoveAt(event.pageX, event.pageY);                       
        }
      }    
}

function MoveAt(pageX, pageY)
{
    let relativeX = pageX - currentX;
    let relativeY = pageY - currentY;
    let rel = relativeX - relativeY;

    switch(moveAxis)
    {
        case 'X':
            rel = relativeX;
            break;
        case 'Y':
            rel = relativeX;
            break;
        case 'Z':
            if(mode == 'move')
            {
                rel = -relativeY;
            }
            else if(mode == 'rotate')
            {
                rel = relativeX;
            }
            break;
    }

    if(mode == 'move')
    {
        mp.trigger('client:MoveObject', rel, moveAxis);
    }
    else if(mode == 'rotate')
    {
        mp.trigger('client:RotateObject', rel, moveAxis);
    }
    

    currentX = pageX;
    currentY = pageY;
    //itt mozgatjuk az objectet
}


function UpdateX(centerX, centerY, Xx, Xy)
{
    LineX.setAttribute("x1", centerX);
    LineX.setAttribute("y1", centerY);
    LineX.setAttribute("x2", Xx);
    LineX.setAttribute("y2", Xy); 
    
    PosX.style.left = Xx + 'px';
    PosX.style.top = Xy + 'px';
}

function UpdateY(centerX, centerY, Yx, Yy)
{
    LineY.setAttribute("x1", centerX);
    LineY.setAttribute("y1", centerY);
    LineY.setAttribute("x2", Yx);
    LineY.setAttribute("y2", Yy);  

    PosY.style.left = Yx + 'px';
    PosY.style.top = Yy + 'px';

}

function UpdateZ(centerX, centerY, Zx, Zy)
{
    LineZ.setAttribute("x1", centerX);
    LineZ.setAttribute("y1", centerY);
    LineZ.setAttribute("x2", Zx);
    LineZ.setAttribute("y2", Zy);  

    PosZ.style.left = Zx + 'px';
    PosZ.style.top = Zy + 'px';
}

function Hide(lineName)
{
    switch(lineName)
    {
        case 'X':
            PosX.classList.add('invisible');
            LineX.classList.add('invisible');
            break;
        case 'Y':
            PosY.classList.add('invisible');
            LineY.classList.add('invisible');
            break;
        case 'Z':
            PosZ.classList.add('invisible');
            LineZ.classList.add('invisible');
            break;
    }
    
}

function Show(lineName)
{
    switch(lineName)
    {
        case 'X':
            PosX.classList.remove('invisible');
            LineX.classList.remove('invisible');
            break;
        case 'Y':
            PosY.classList.remove('invisible');
            LineY.classList.remove('invisible');
            break;
        case 'Z':
            PosZ.classList.remove('invisible');
            LineZ.classList.remove('invisible');
            break;
    }
    
}


function MoveObject(ev)
{

}