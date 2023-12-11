function getRandomNumber(min, max){
    let rnd = Math.floor(Math.random() * (max-min + 1)) + min;    
    return rnd;
}
function getRandomColors(nmbr){
    let colors = ["#ff5733", "#66cc99", "#9933cc", "#ffcc00", "#3399ff", "#cc3366", "#66ff33", "#ff6699", "#3366cc", "#cc9900"];
    let returnList = [];    
    while(returnList.length < nmbr){
        let rndNmbr = getRandomNumber(0, colors.length - 1);

        if(!returnList.includes(colors[rndNmbr])){
            returnList.push(colors[rndNmbr]);
        }
    }
    return returnList;
}
function getStartNumbers(nmbr){
    let rndStartNumbers = [];
    while(rndStartNumbers.length < rnd){
        let rnd = getRandomNumber(1, nmbr)        
        if(!rndStartNumbers.includes(rnd)){            
            rndStartNumbers.push(rnd); 
        }
    }
    return rndStartNumbers;
}

function getEndNumbers(startNumbers){
    let rndEndNumbers = [];
    while(rndEndNumbers.length < startNumbers.length){
        let rndIndex = getRandomNumber(0, startNumbers.length);
        if(startNumbers.includes(rndIndex) && !rndEndNumbers.includes(rndIndex)){
            rndEndNumbers.push(rndIndex);
        }
    }
    return rndEndNumbers;
}
function getEndColors(rndColors){
    let endColors = [];        
    while(endColors.length < rndColors.length){
        let rndIndex = getRandomNumber(0, rndColors.length - 1);
        if(!endColors.includes(rndColors[rndIndex])){
            endColors.push(rndColors[rndIndex]);    
    }
    }
    return endColors;
}
let rnd = getRandomNumber(5, 10);
let rndColors = getRandomColors(rnd);
let container = document.querySelector('#container');
let endContainer = document.querySelector('#endContainer');

let containerBack = document.querySelector('#containerBack');
let endContainerBack = document.querySelector('#endContainerBack');

let startNumbers = getStartNumbers(rnd);
let endNumbers = getEndNumbers(startNumbers);
let endColors = getEndColors(rndColors);

for (let i = 0; i < rnd; i++) {        
    let sPoint = document.createElement("div");    
    sPoint.setAttribute("id", "s" + startNumbers[i]);
    sPoint.style.position = "relative";
    sPoint.style.width = "20px";
    sPoint.style.height = "20px";    
    sPoint.style.backgroundColor = rndColors[i];
    sPoint.classList.add("startPoints");
    sPoint.number = startNumbers[i];
    //console.log("sPoint: " + sPoint.number);
    container.appendChild(sPoint);
    sPoint.addEventListener('mousedown', onMouseDown);
}
for (let j = 0; j < rnd; j++){
    let ePoint = document.createElement("div");
    ePoint.setAttribute("id", "s" + endNumbers[j]);
    ePoint.style.position = "relative";
    ePoint.style.width = "20px";
    ePoint.style.height = "20px";    
    ePoint.classList.add("endPoints");
    let startPoints = document.getElementsByClassName('startPoints');
    for (let k = 0;  k < startPoints.length; k++) {
        if(startPoints[k].number == endNumbers[j]){
            ePoint.style.backgroundColor = startPoints[k].style.backgroundColor;
        }        
    }
    ePoint.number = endNumbers[j];
    //console.log("ePoint: "+ePoint.number);
    endContainer.appendChild(ePoint);    
}

for (let i = 0; i < rnd; i++) {        
    let sPoint = document.createElement("div");    
    sPoint.setAttribute("id", "s" + startNumbers[i]);
    sPoint.style.position = "relative";
    sPoint.style.width = "20px";
    sPoint.style.height = "20px";    
    sPoint.style.backgroundColor = rndColors[i];
    sPoint.classList.add("startPointsBack");
    sPoint.number = startNumbers[i];
    //console.log("sPoint: " + sPoint.number);
    containerBack.appendChild(sPoint);
    sPoint.addEventListener('mousedown', onMouseDown);
}
for (let j = 0; j < rnd; j++){
    let ePoint = document.createElement("div");
    ePoint.setAttribute("id", "s" + endNumbers[j]);
    ePoint.style.position = "relative";
    ePoint.style.width = "20px";
    ePoint.style.height = "20px";    
    ePoint.classList.add("endPointsBack");
    let startPoints = document.getElementsByClassName('startPoints');
    for (let k = 0;  k < startPoints.length; k++) {
        if(startPoints[k].number == endNumbers[j]){
            ePoint.style.backgroundColor = startPoints[k].style.backgroundColor;
        }        
    }
    ePoint.number = endNumbers[j];
    //console.log("ePoint: "+ePoint.number);
    endContainerBack.appendChild(ePoint);    
}




let startPoint = null;    
let startPosX = null;
let startPosY = null;
let clickStatus = false;
let endPoint = null;
let isCorrect = false;

function onMouseDown(event){    
  if(event.button == 0 && clickStatus == false){
    event.preventDefault();
    clickStatus = true;
    let line = document.querySelector('#line');      
    document.addEventListener('mousemove', onMouseMove);        
    document.addEventListener('mouseup', onMouseUp);              
    startPoint = event.target;
    line.style.stroke = startPoint.style.backgroundColor;
    startPosX = startPoint.getBoundingClientRect().left + startPoint.clientWidth / 2;
    startPosY = startPoint.getBoundingClientRect().top + startPoint.clientHeight / 2;    
    function onMouseUp(){
      document.removeEventListener('mousemove', onMouseMove);                            
      //console.log(endPoint);
      if(endPoint == null){          
        resetDefaultLine();
        console.log("Nem húztad végpontra a vezetéket! Balfasz.");
      }
      else if(startPoint.number != endPoint.number){
        resetDefaultLine();
        console.log("Nem egyezik meg a kezdő és a végpont! Balfasz.");
      }
      if(endPoint != null){           
        if(startPoint.number == endPoint.number){                                   
            correctMatch();
            startPoint.removeEventListener('mousedown', onMouseDown);
        }
      }
      clickStatus = false;
    }
    let shiftX = event.clientX - startPoint.getBoundingClientRect().left;
    let shiftY = event.clientY - startPoint.getBoundingClientRect().top;

    function onMouseMove(event){
      if(clickStatus){
        moveAt(event.pageX, event.pageY, shiftX, shiftY);                       
      }
      let elemBelow = document.elementFromPoint(event.pageX, event.pageY);
      
      if(elemBelow){
        endPoint = elemBelow.closest(".endPoints");        
      }else{
        endPoint = null;
      }
    }              
  }      
}  

function moveAt(pageX, pageY){
    let line = document.querySelector('#line');  
    line.setAttribute("x1", startPosX);
    line.setAttribute("y1", startPosY);
    line.setAttribute("x2", pageX);
    line.setAttribute("y2", pageY);
}

function correctMatch(){
    if(clickStatus){
        let line = document.querySelector('#line');
        line.setAttribute("x1", 0);
        line.setAttribute("y1", 0);
        line.setAttribute("x2", 0);
        line.setAttribute("y2", 0);
        let svg = document.querySelector('#svg');            
        let newLine = document.createElementNS('http://www.w3.org/2000/svg','line');                
        newLine.style.stroke = startPoint.style.backgroundColor;
        newLine.style.strokeWidth = "18";
        newLine.setAttribute("x1", startPosX);
        newLine.setAttribute("y1", startPosY);
        newLine.classList.add("newLines");
        endPosX = endPoint.getBoundingClientRect().left + endPoint.clientWidth / 2;
        endPosY = endPoint.getBoundingClientRect().top + endPoint.clientHeight / 2;
        newLine.setAttribute("x2", endPosX);
        newLine.setAttribute("y2", endPosY);
        startPoint.matched = true;
        svg.appendChild(newLine);        
        console.log("Sikeres match!");
    }
}
function resetDefaultLine(){
    let line = document.querySelector('#line');        
    line.setAttribute("x1", 0);
    line.setAttribute("y1", 0);
    line.setAttribute("x2", 0);
    line.setAttribute("y2", 0);
}
window.addEventListener('resize', onResize);

function onResize(){
    console.log("resize");
    let allStartPoints = document.getElementsByClassName("startPoints");
    let allNewLines = document.getElementsByClassName("newLines");
    let allEndPoints = document.getElementsByClassName("endPoints");
    let newStartPosX;
    let newStartPosY;
    let newEndPosX;
    let newEndPosY;
    let svg = document.querySelector('#svg');
    svg.innerHTML = '<line x1="0" y1="0" x2="0" y2="0" style="stroke:rgb(0,0,255);stroke-width:15" id="line">';
    for (let j = 0; j < allStartPoints.length; j++) {
        if(allStartPoints[j].matched){
            let svg = document.querySelector('#svg');            
            let newLine = document.createElementNS('http://www.w3.org/2000/svg','line');                
            newLine.style.stroke = allStartPoints[j].style.backgroundColor;
            newLine.style.strokeWidth = "18";
            newStartPosX = allStartPoints[j].getBoundingClientRect().left + allStartPoints[j].clientWidth / 2;
            newStartPosY = allStartPoints[j].getBoundingClientRect().top + allStartPoints[j].clientHeight / 2;
            for (let k = 0; k < allEndPoints.length; k++) {
                if(allStartPoints[j].number == allEndPoints[k].number){
                    newEndPosX = allEndPoints[k].getBoundingClientRect().left + allEndPoints[k].clientWidth / 2;
                    newEndPosY = allEndPoints[k].getBoundingClientRect().top + allEndPoints[k].clientHeight / 2;
                }
                
            }
            newLine.setAttribute("x1", newStartPosX);
            newLine.setAttribute("y1", newStartPosY);
            newLine.classList.add("newLines");
            newLine.setAttribute("x2", newEndPosX);
            newLine.setAttribute("y2", newEndPosY);        
            svg.appendChild(newLine);
        }
        
    }
}