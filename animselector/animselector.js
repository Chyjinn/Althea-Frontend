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

const panel = document.getElementById("animSelectorPanel");
const texts = document.getElementById("texts");
texts.addEventListener("mousedown", (e) => {
  isDragging = true;
  initialX = e.clientX - panel.getBoundingClientRect().left;
  initialY = e.clientY - panel.getBoundingClientRect().top;
});

document.addEventListener("mousemove", (e) => {
  if (!isDragging) return;

  currentX = e.clientX - initialX;
  currentY = e.clientY - initialY;

  panel.style.left = currentX + "px";
  panel.style.top = currentY + "px";
});

document.addEventListener("mouseup", () => {
  isDragging = false;
});

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