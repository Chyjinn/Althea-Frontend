let isDragging = false;
let initialX;
let initialY;
let currentX;
let currentY;
let osszeg = 0;    
let nmbr = 0;
let indexNmbr = 0;
let indexOsszeg = -1;
let animName2 = "";
let animDictionary2 = "";

// Make the DIV element draggable:
dragElement(document.getElementById("animSelectorPanel"));

function dragElement(elmnt) {
  var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
  if (document.getElementById(elmnt.id)) {
    // if present, the header is where you move the DIV from:
    document.getElementById(elmnt.id).onmousedown = dragMouseDown;
  } else {
    // otherwise, move the DIV from anywhere inside the DIV:
    elmnt.onmousedown = dragMouseDown;
  }

  function dragMouseDown(e) {
    e = e || window.event;
    e.preventDefault();
    // get the mouse cursor position at startup:
    pos3 = e.clientX;
    pos4 = e.clientY;
    document.onmouseup = closeDragElement;
    // call a function whenever the cursor moves:
    document.onmousemove = elementDrag;
  }

  function elementDrag(e) {
    e = e || window.event;
    e.preventDefault();
    // calculate the new cursor position:
    pos1 = pos3 - e.clientX;
    pos2 = pos4 - e.clientY;
    pos3 = e.clientX;
    pos4 = e.clientY;
    // set the element's new position:
    elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
    elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
  }

  function closeDragElement() {
    // stop moving when mouse button is released:
    document.onmouseup = null;
    document.onmousemove = null;
  }
}

function getAnimNameAndDictionary(animDictionaries, animNames){
    animName2 = animNames;
    animDictionary2 = animDictionaries;
    document.getElementById("animDictionary").innerText = animDictionary2;
    document.getElementById("animName").innerText = animName2;
}


function onLoad(){
    mp.trigger('returnAnimtoJs', 0, 0);
    document.getElementById("animDictionary").innerText = animDictionary2;
    document.getElementById("animName").innerText = animName2;
}
//Billentyű bindek amik remélem működnek is a szerveren. Update: Működnek.
document.addEventListener('keydown', (e) =>{
    var keyname = e.key;
    if(keyname == "ArrowRight"){
        indexNmbr = parseInt(document.getElementById("index").innerText);
        indexOsszeg = indexNmbr + 1;
        document.getElementById("index").innerText = indexOsszeg;                
        mp.trigger('getFlagAndIdFromJs', indexOsszeg, osszeg);
        mp.trigger('returnAnimtoJs', indexOsszeg, osszeg);
    }
    if(keyname == "ArrowLeft" && parseInt(document.getElementById("index").innerText) > 0){
        indexNmbr = parseInt(document.getElementById("index").innerText);
        indexOsszeg = indexNmbr - 1;            
        document.getElementById("index").innerText = indexOsszeg;                        
        mp.trigger('getFlagAndIdFromJs',indexOsszeg, osszeg);
        mp.trigger('returnAnimtoJs', indexOsszeg, osszeg);  
    }
    if(keyname == "ArrowUp"){
        nmbr = parseInt(document.getElementById("flag").innerText);
        osszeg = nmbr + 1                            
        document.getElementById("flag").innerText = osszeg;        
        mp.trigger('getFlagAndIdFromJs',indexOsszeg, osszeg);
    }
    if(keyname == "ArrowDown" && parseInt(document.getElementById("flag").innerText) > 0){
        nmbr = parseInt(document.getElementById("flag").innerText);
        osszeg = nmbr + -1            
        document.getElementById("flag").innerText = osszeg;            
        mp.trigger('getFlagAndIdFromJs',indexOsszeg, osszeg);
    }
    if(keyname == "Enter"){
        mp.trigger('client:playAnim', animDictionary2, animName2, osszeg, true)
    }
    if(keyname == "Backspace"){
        mp.trigger('client:playAnim', animDictionary2, animName2, osszeg, false)
    }
    if(keyname == "Shift"){
        //ide jön az upload script.
    }
});
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Itt meg igazából a "gombokra" avagy képekre való kattintás van megírva. Léptetik az Index és a Flag számlálót illetve triggerelik a getFlagAndIdFromJs
//metódust ami lényegében megkapja az Indexet és a Flag-et.
function replyClick(id){    
    if(id == "up"){        
        nmbr = parseInt(document.getElementById("flag").innerText);
        osszeg = nmbr + 1                            
        document.getElementById("flag").innerText = osszeg;        
        mp.trigger('getFlagAndIdFromJs',indexOsszeg, osszeg);
               
    }else if(id == "down"){
        if(parseInt(document.getElementById("flag").innerText) > 0){            
            nmbr = parseInt(document.getElementById("flag").innerText);
            osszeg = nmbr + -1            
            document.getElementById("flag").innerText = osszeg;            
            mp.trigger('getFlagAndIdFromJs',indexOsszeg, osszeg);                        
            
        }
    }else if(id == "left"){        
        if(parseInt(document.getElementById("index").innerText) > 0){                        
            indexNmbr = parseInt(document.getElementById("index").innerText);
            indexOsszeg = indexNmbr - 1;            
            document.getElementById("index").innerText = indexOsszeg;                        
            mp.trigger('getFlagAndIdFromJs',indexOsszeg, osszeg);
            mp.trigger('returnAnimtoJs', indexOsszeg, osszeg);            
            
        }
        
    }else if(id == "right"){                        
        indexNmbr = parseInt(document.getElementById("index").innerText);
        indexOsszeg = indexNmbr + 1;
        document.getElementById("index").innerText = indexOsszeg;                
        mp.trigger('getFlagAndIdFromJs', indexOsszeg, osszeg);
        mp.trigger('returnAnimtoJs', indexOsszeg, osszeg);
    }    
}
function addAnimToContent(animName, animDictionary, flag){
    let anim = document.createElement('p');
    anim.innerHTML = "animDictionary: " +
    animDictionary +
    " animName: " + animName + " flag: " + flag;
    anim.animDictionary = animDictionary;
    anim.animName = animName;  
    anim.flag = flag;  
    document.getElementById('texts').appendChild(anim);

}

function playAnimation(id){
    //Megkeresi a playBtn-t ID alapján, ha playBtn és rákattintanak akkor átvált Pause-ra és fordítva.
    //Ezután triggereli a playAnimot a kliens oldalon, ami tovább triggereli a megadott adatokkal a szerver oldalt.
    //A ki kommentelt rész cserélgeti a gombokat.
    var playBtn = document.getElementById(id);
    /*var pauseBtn = "kepek/pause.png";
    var playBtnSrc = "kepek/play.png";*/
    mp.trigger('client:playAnim', animDictionary2, animName2, osszeg, true)
    /*if(playBtn.src.includes("kepek/play.png")){        
        playBtn.src = pauseBtn;
        mp.trigger('client:playAnim', animDictionary2, animName2, osszeg, true)
    }else{
        playBtn.src = playBtnSrc;
        mp.trigger('client:playAnim', animDictionary2, animName2, osszeg, false)
    }*/
    ////////////////////////////////////////////////////////////////////////////////////////////////////


}
function stopAnimation(id){
    mp.trigger('client:playAnim', animDictionary2, animName2, osszeg, false)
}