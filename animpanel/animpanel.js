function addAnimToContent(animName, animDictionary){
    let anim = document.createElement('p');
    anim.innerHTML = "animDictionary: " +
    animDictionary +
    " animName: " + animName;
    anim.animDictionary = animDictionary;
    anim.animName = animName;    
    document.getElementById('tartalom').appendChild(anim);

}

function replyClick(clicked_id){
    switch(clicked_id){
        case "fav":
            document.getElementById('tartalom').innerHTML = '<p>Fav első sora</p> <p>Fav második sora</p>'
            break;
        case "sit":
            document.getElementById('tartalom').innerHTML = '<p>sit első sora</p> <p>sit második sora</p>'
            break;
        case "stand":
            alert("Áll");
            break;
        case "faszomtudja": 
            alert("faszomtudja");
            break;            
    }
}