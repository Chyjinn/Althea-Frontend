var content = document.querySelector('.content');
var givemenu = document.querySelector('.givemenu');
var tooltip = document.querySelector('.tooltip');
var itemmenu = document.querySelector('.itemmenu');

var inv_weight = document.querySelector('#inv_weight');
var inv_weight_display = document.querySelector('#inv_weight .weightdisplay');

var container_weight = document.querySelector('#container_weight');
var container_weight_display = document.querySelector('#container_weight .weightdisplay');

var givemenu_slider = document.querySelector('.amount');
var givemenu_itemname = document.querySelector('.itemname');
var nearbyplayers =  document.querySelector('.nearbyplayers');
var selected_player = null;
var givemenu_name = null;
var givemenu_itemid = null;
var givemenu_maxvalue = null;

var items = document.querySelectorAll('.item');
var container = document.querySelector('.container');
var inv_player = document.querySelector('.inventory-items');
var inv_container = document.querySelector('.container-items');
var inv_clothes = document.querySelectorAll('.slot');

var amount_slider = document.querySelector('.amount');
var amount_number = document.querySelector('.amountnumber');
amount_slider.addEventListener('input',UpdateSlider);

var closegivemenu = document.querySelector('.close');

var nearbyplayers = document.querySelector('.nearbyplayers');
closegivemenu.addEventListener('mousedown', closeGiveMenu);

var inventory_title = document.querySelector('#playername');
var container_title = document.querySelector('#containertext');


var item = null;


var split_item = null;
var close_itemmenu = null;
var use_itemmenu = null;
var open_container = null;
var target_itemmenu = null;


var status_click = false;
var ghostItem = null;
var target_inventory = null;
var target_interact = null;
var target_container = null;
var target_item = null;
var target_slot = null;

function setInventoryName(theName)
{
  inventory_title.innerHTML = '<p>'+theName+'</p>';
}

function setContainerName(theName)
{
  container_title.innerHTML = '<p>'+theName+'</p>';
}

function UpdateSlider(source){
  amount_number.innerHTML = amount_slider.value;
}

function SetSliderMax(value)
{
  givemenu_slider.max = value;
  givemenu_slider.value = 1;
  UpdateSlider();
}

function AddNameToGivemenu(name, playerid)
{
  let toAdd = document.createElement('input');
  toAdd.className = 'playerselect';
  toAdd.type = 'button';
  toAdd.value = name;
  toAdd.id = playerid;
  toAdd.addEventListener('click',selectPlayer);
  nearbyplayers.appendChild(toAdd);
}

function selectPlayer(ev)
{
  selected_player = ev.target.id;
  console.log(selected_player + ' item: ' + givemenu_itemid + ' amount: ' + givemenu_slider.value);
  //beállítjuk a kiszemelt játékos ID-jét
  //átküldjük szerver oldalra hogy melyik itemet (adatbázis id) szeretnénk átadni, melyik playernek és hány darabot. Ha az összeset akkor csak átrakjuk, ha nem akkor új itemet hozunk létre és állítjuk az értékeket megfelelően
  mp.trigger('client:GiveItem',givemenu_itemid,selected_player,givemenu_slider.value);
  closeGiveMenu();
}

function clearGiveMenu()
{
  let playernames = document.querySelectorAll('.playerselect');
  playernames.forEach(removenames);
  function removenames(name){
    name.remove();
  }
  
}

function closeGiveMenu()
{
  clearGiveMenu();
  givemenu.style.display = 'none';
  givemenu_slider.value = 0;
  givemenu_slider.max = 0;
  selected_player = -1;
}

function openGiveMenu()
{
  givemenu.style.display = 'block';
  givemenu_itemname.innerHTML = givemenu_name;
  givemenu_slider.value = 1;
  givemenu_slider.max = givemenu_maxvalue;
}

function addItemToInventory(dbid,itemid, itemname, itemdescription, weight, amount, itempicture, priority, inuse, itemtype){
  RemoveItem(dbid);
  let newItem =  document.createElement('div');
  newItem.className = 'item';
  newItem.id = dbid;
  newItem.innerHTML = '<img src="'+itempicture+'"></img>'+
          '<div class="amount">'+amount+'</div>';
  let color = GetColorByItemType(itemtype);
  newItem.style.background = 'linear-gradient(0deg, '+color+' 0%, rgba(0,0,0,0) 100%)';
  newItem.itemtype = itemtype;
  newItem.itemid = itemid;
  newItem.itemname = itemname;
  newItem.itempicture = itempicture;
  newItem.itemdescription = itemdescription;
  newItem.weight = weight;
  newItem.priority = priority;
  newItem.amount = amount;
  if (inuse === 'True')
  {
    newItem.inuse = true;
  }
  else{
    newItem.inuse = false;
  }

  if(newItem.inuse == true)
  {
    newItem.style.outline = 'solid 1px #02c39a';
  }

  newItem.classList.add('invisible');
  inv_player.appendChild(newItem);

  newItem.addEventListener('mouseenter', displayItemInfo);
  newItem.addEventListener('mouseleave', hideToolTip)
  newItem.addEventListener('contextmenu', useItem);
  newItem.addEventListener('mousedown', moveItem);
  sortItems();
  newItem.classList.remove('invisible');
}

function ClearContainer(){
  items = inv_container.querySelectorAll('.item');
  items.forEach(remove_every_item);

  function remove_every_item(item){
      item.remove();
  }
}

function ShowContainer()
{
  container.classList.remove('invisible');
}

function HideContainer()
{
  ClearContainer();
  container.classList.add('invisible');
}

function GetColorByItemType(theType)
{
  switch(theType)
  {
    case '0':
    return 'rgba(0,0,0,0)';
    break;
    case '1':
      return '#000000';
    break;
    case '2':
      return '#ffe066';
    break;
    case '3':
      return '#f25f5c';
    break;
    case '4':
      return '#f77e7c';
    break;
    case '5':
      return '#1b98e0';
    break;
    case '6':
      return '#1a936f';
    break;
    case '7':
      return '#ffa686';
    break;
    case '8':
      return '#513b56';
    break;
    case '9':
      return '#f3ffbd';
    break;
    default:
      return 'red';
      break;
  }
}

function addItemToContainer(dbid,itemid, itemname, itemdescription, weight, amount, itempicture, priority, inuse, itemtype){
  RemoveItem(dbid);
  let newItem =  document.createElement('div');
  newItem.className = 'item';
  newItem.id = dbid;

  newItem.innerHTML = '<img src="'+itempicture+'"></img>'+
          '<div class="amount">'+amount+'</div>';
  let color = GetColorByItemType(itemtype);
  newItem.style.background = 'linear-gradient(0deg, '+color+' 0%, rgba(0,0,0,0) 100%)';
  newItem.itemtype = itemtype;
  newItem.itemid = itemid;
  newItem.itemname = itemname;
  newItem.itempicture = itempicture;
  newItem.itemdescription = itemdescription;
  newItem.weight = weight;
  newItem.priority = priority;
  newItem.amount = amount;
  if (inuse === 'True')
  {
    newItem.inuse = true;
  }
  else{
    newItem.inuse = false;
  }

  newItem.classList.add('invisible');
  inv_container.appendChild(newItem);
  
  newItem.addEventListener('mouseenter', displayItemInfo);
  newItem.addEventListener('mouseleave', hideToolTip)
  newItem.addEventListener('contextmenu', useItem);
  newItem.addEventListener('mousedown', moveItem);
  sortItems();
  newItem.classList.remove('invisible');
}

function addItemToSlot(dbid,itemid, itemname, itemdescription, weight, amount, itempicture, priority, itemtype){
  RemoveItem(dbid);
  let newItem =  document.createElement('div');
  newItem.className = 'item';
  newItem.id = dbid;
  newItem.innerHTML = '<img src="'+itempicture+'"></img>';
  newItem.itemtype = itemtype;
  newItem.itemid = itemid;
  newItem.itemname = itemname;
  newItem.itempicture = itempicture;
  newItem.itemdescription = itemdescription;
  newItem.weight = weight;
  newItem.priority = priority;
  newItem.inuse = Boolean(true);

  let toAppend = null;
  switch(itemid)
  {
      case '1':
        toAppend = document.querySelector("#kalap");
        break;
      case '2':
        toAppend = document.querySelector("#maszk");
        break;
      case '3':
        toAppend = document.querySelector("#nyaklanc");
        break;
      case '4':
        toAppend = document.querySelector("#szemuveg");
        break;
      case '5':
        toAppend = document.querySelector("#polo");
        break;
      case '6':
        toAppend = document.querySelector("#fulbevalo");
        break;
      case '7':
      toAppend = document.querySelector("#nadrag");
        break;
      case '8':
        toAppend = document.querySelector("#karkoto");
        break;
      case '9':
      toAppend = document.querySelector("#cipo");
        break;
      case '10':
        toAppend = document.querySelector("#ora");
        break;
      case '11':
      toAppend = document.querySelector("#taska");
        break;
      case '12':
      toAppend = document.querySelector("#armor");
        break;
        case '13':
      toAppend = document.querySelector("#kituzo");
      case '14':
        toAppend = document.querySelector("#kalap");
        break;
      case '15':
        toAppend = document.querySelector("#maszk");
        break;
      case '16':
        toAppend = document.querySelector("#nyaklanc");
        break;
      case '17':
        toAppend = document.querySelector("#szemuveg");
        break;
      case '18':
        toAppend = document.querySelector("#polo");
        break;
      case '19':
        toAppend = document.querySelector("#fulbevalo");
        break;
      case '20':
      toAppend = document.querySelector("#nadrag");
        break;
      case '21':
        toAppend = document.querySelector("#karkoto");
        break;
      case '22':
      toAppend = document.querySelector("#cipo");
        break;
      case '23':
        toAppend = document.querySelector("#ora");
        break;
      case '24':
      toAppend = document.querySelector("#taska");
        break;
      case '25':
      toAppend = document.querySelector("#armor");
        break;
      case '26':
      toAppend = document.querySelector("#kituzo");
        break;
      case '27':
        toAppend = document.querySelector("#kesztyu");
        break;
      default:
        console.log('invalid slot');
        break;
  }
  if(toAppend != null)
  {
    toAppend.appendChild(newItem);
  }

  newItem.addEventListener('mouseenter', displayItemInfo);
  newItem.addEventListener('mouseleave', hideToolTip)
  newItem.addEventListener('contextmenu', useItem);
  newItem.addEventListener('mousedown', moveItem);
}


function splitItem(ev)
{
console.log('Szétválaszt: '+target_itemmenu);
}

function openContainer(ev)
{
mp.trigger('client:OpenContainer',item.id);
closeItemMenu(ev);
}

function useItem(ev){
ev.preventDefault();
if(status_click === false)
{
  const item = this;
  mp.trigger('client:UseItem',item.id);
  hideToolTip(ev);
  /*
  EZT MÁR ÁTÍRTUK SZERVER OLDALI KEZELÉSRE
  if(item.itemid <= 14 && item.inuse == true)//ruha item és viselve van
  {
    mp.trigger('client:MoveItem',item.id, 0);
  }
  else if(item.itemid <= 14)//ruha item és nincs használatban
  {
    mp.trigger('client:MoveItemToClothing',item.id,-1);
  }
  else
  {
    
  }
*/
}
}

function setItemUse(dbid, state)
{
  var toSet = document.getElementById(String(dbid));
  if (state === 'True')
  {
    toSet.inuse = true;
    toSet.style.outline = 'solid 1px #02c39a';
  }
  else{
    toSet.inuse = false;
    toSet.style.outline = 'none';
  }
}

function closeItemMenu(ev){
ev.preventDefault();
itemmenu.style.display = 'none';
}

function ShowInventory()
{
items = document.querySelectorAll('.item');
content.style.display = 'block';
givemenu.style.display = 'none';
tooltip.style.display = 'none';
itemmenu.style.display = 'none';

items.forEach((theItem) => {
  theItem.addEventListener('mouseenter', displayItemInfo);
  theItem.addEventListener('mouseleave', hideToolTip)
})
}

function HideInventory()
{
content.style.display = 'none';
givemenu.style.display = 'none';
tooltip.style.display = 'none';
itemmenu.style.display = 'none';
}

function setItemPrio(dbid, prio)
{
  var toSet = document.getElementById(String(dbid));
  toSet.priority = parseInt(prio);
}


function sortItems()
{
items = inv_player.querySelectorAll('.item');
var listitems = [];
items.forEach((userItem) => {
  listitems.push(userItem);
})

listitems.sort(function(a,b)
{
  var compA = parseInt(a.priority);
  var compB = parseInt(b.priority);
  return (compA < compB) ? - 1 : (compA > compB) ? 1 : 0;
}
);

for(i = 0; i < listitems.length; i++)
{
  inv_player.appendChild(listitems[i]);
}
}

function moveItem(ev){

if(event.button == 0 && !status_click && (this.inuse === false || this.parentElement.classList.contains('slot')))//bal klikk ÉS (nincs használatban VAGY felvett ruha))
{
  ev.preventDefault();
  item = this;
  ghostItem = item.cloneNode(true);
  ghostItem.style.border = '0';
  ghostItem.style.background = 'rgba(0,0,0,0)';
  let ghostItemName = ghostItem.querySelector('.name');
  if(ghostItemName != null)
  {
    ghostItemName.style.visibility = 'hidden';
  }
  
  let ghostItemAmount = ghostItem.querySelector('.amount');
  if(ghostItemAmount != null)
  {
    ghostItemAmount.style.visibility = 'hidden';
  }

  let ghostItemWeight = ghostItem.querySelector('.weight');
  if(ghostItemWeight != null)
  {
    ghostItemWeight.style.visibility = 'hidden';
  }

  ghostItem.style.outline = 'none';
  ghostItem.setAttribute('class', 'ghostItem');
  item.classList.add('invisible');

  let shiftX = ghostItem.getBoundingClientRect().left + 20;
  let shiftY = ghostItem.getBoundingClientRect().top + 20;

  ghostItem.style.position = 'absolute';
  ghostItem.style.zIndex = 1000;
  document.body.append(ghostItem);

  status_click = true;

  if(status_click){
    moveAt(event.pageX,event.pageY);
  }
  
  function moveAt(pageX, pageY) {
    ghostItem.style.left = pageX - shiftX + 'px';
    ghostItem.style.top = pageY - shiftY + 'px';
  }


function onMouseMove(event) {
  if (status_click) {
    moveAt(event.pageX, event.pageY);
  }
  ghostItem.hidden = true;
  let elemBelow = document.elementFromPoint(event.clientX, event.clientY);
  
  ghostItem.hidden = false;
  if (!elemBelow) return;
  target_inventory = elemBelow.closest('.inventory-items');
  target_interact = elemBelow.closest('.interaction');
  target_container = elemBelow.closest('.container-items');
  let itemBelow = elemBelow.closest('.item');
  let clothingBelow = elemBelow.closest('.slot');
  target_item = itemBelow;
  target_slot = clothingBelow;
  }

  document.addEventListener('mousemove', onMouseMove);
  ghostItem.addEventListener('mouseup', dropItem);
}

function dropItem(ev)//megnézni hogy az inventory vagy container fölött engedte-e el.
{//ha inventory, akkor -> priority változtatás - item sorbarendezés
//ha container, akkor küldeni szervernek, visszakapni hogy törölje az inventorynkból és hozzáadja a másikhoz
if(target_slot != null && target_slot)//ruha slot-ra húzta
{
  let target_clothing = -1;
  switch(target_slot.id)
  {
      case 'kalap':
        target_clothing = 0;
        break;
      case 'maszk':
        target_clothing = 1;
        break;
      case 'nyaklanc':
        target_clothing = 2;
        break;
      case 'szemuveg':
        target_clothing = 3;
        break;
      case 'polo':
        target_clothing = 4;
        break;
      case 'fulbevalo':
        target_clothing = 5;
        break;
      case 'nadrag':
        target_clothing = 6;
        break;
      case 'karkoto':
        target_clothing = 7;
        break;
      case 'cipo':
        target_clothing = 8;
        break;
      case 'ora':
        target_clothing = 9;
        break;
      case 'taska':
        target_clothing = 10;
        break;
      case 'armor':
        target_clothing = 11;
        break;
      case 'kituzo':
        target_clothing = 12;
        break;
      case 'kesztyu':
        target_clothing = 13;
        break;

      default:
        console.log('invalid slot');
        break;
  }
  if(target_clothing != -1)//valid slotra húzta, átadhatjuk
  {
    mp.trigger('client:MoveItemToClothing',item.id,target_clothing);
    //console.log(target_clothing);
  }
  
}
else if(target_item != null)//item-re húzta, inventory is beállítva ilyenkor
{
  //console.log(item.id + '->'+target_item.id);
  mp.trigger('client:SwapItem',item.id,target_item.id);
}
else if(target_inventory == inv_player)//saját inventory-jába húzta
{
  mp.trigger('client:MoveItem',item.id, 0);
}
else if(target_container == inv_container)//tárolóba húzta utolsó helyre
{
  mp.trigger('client:MoveItem',item.id, 1);
}
else if(target_interact)//ráhúzta valami interact-ra
{
  switch(target_interact.id)
  {
    case 'giveitem'://átadás menü
    givemenu_name = item.itemname;
    givemenu_itemid = item.id;
    givemenu_maxvalue = item.amount;
    mp.trigger('client:GiveItemMenu');
      break;
    case 'useitem'://használat
      mp.trigger('client:UseItem',item.id);
      break;
    case 'showitem'://felmutatás
      break;
    case 'splititem'://szétválasztás
      break;
    case 'renameitem'://átadás menü
      break;
    case 'dropitem'://eldobás
      mp.trigger('client:DropItem',item.id, item.itemid);
      break;
  }
}
else//nem húzta semmire
{
  console.log('nem húzta semmire');
}
  ghostItem.remove();
  item.classList.remove('invisible');
  item = null;
  status_click = false;
}
}
//MOVEITEM VÉGE

function RemoveItem(dbid){
  items = document.querySelectorAll('.item');
  items.forEach(remove_one_item);
  function remove_one_item(item){
    if(item.id == ''+dbid){
      item.remove();
    }
  }
}

function ClearInventory(){
  items = document.querySelectorAll('.item');
  items.forEach(remove_every_item);

  function remove_every_item(item){
      item.remove();

  }
}



var displayinfoitem = null;


function displayItemInfo(event){
  items = document.querySelectorAll('.item');
  displayinfoitem = event.target;

  items.forEach(resizeItems);
      function resizeItems(theItem){
        if(displayinfoitem != theItem)
        {
          if(!displayinfoitem.parentElement.classList.contains('slot'))//nem ruhákra húzta, akkor lehet highlightolni
          {
            if(!theItem.parentElement.classList.contains('slot'))//ruha elemet nem highlightolunk
            {
                theItem.style.transitionDuration = '300ms';
                theItem.style.transform =  'scale(0.9)';
                theItem.style.opacity = '90%';
            }
          }

        }
      }

  if(status_click === false)//nem mozgat egy itemet sem
  {
        console.log('váá');
        let name = displayinfoitem.itemname;
        let description = displayinfoitem.itemdescription;
        let weight = (displayinfoitem.weight / 1000).toFixed(1);
        let displayImage =  document.createElement('div');
        displayImage.className = 'tooltipimage';
        displayImage.innerHTML = '<img src="'+displayinfoitem.itempicture+'" alt="">';

        let displayText = document.createElement('div');
        displayText.className = 'tooltiptext';
        displayText.innerHTML = '<div class="name">'+name+'</div>'+
        '<div class="description">'+description+'</div>';

        let displayWeight = document.createElement('div');
        displayWeight.className = 'weight';
        displayWeight.innerHTML = '<i class="fa-solid fa-dumbbell"></i> '+weight+' kg';
        tooltip.innerHTML = '';
        tooltip.appendChild(displayImage);
        tooltip.appendChild(displayText);
        tooltip.appendChild(displayWeight);

      
        
          //be kell állítani a kép hátterét
        let color = GetColorByItemType(displayinfoitem.itemtype);

        tooltip.querySelector('.tooltipimage').style.background = 'linear-gradient(0deg, '+color+' 0%, rgba(0,0,0,0) 100%)';
        tooltip.style.display = 'block';
      document.addEventListener('mousemove', moveToolTip);

  }
  }

function moveToolTip(event) {
  let x = event.clientX;
  let y = event.clientY;
  tooltip.style.left = x+2 + 'px';
  tooltip.style.top = y+2 + 'px';
}

function hideToolTip(event){
  displayinfoitem = event.target;
      tooltip.style.display = 'none';
      document.removeEventListener('mousemove', moveToolTip);
  
  items.forEach(resizeItems);
      function resizeItems(theItem){
        if(displayinfoitem != theItem)
        {
          if(!displayinfoitem.parentElement.classList.contains('slot'))//nem ruhákra húzta, akkor lehet highlightolni
          {
            if(!theItem.parentElement.classList.contains('slot'))//nem ruhákra húzta, akkor lehet highlightolni
            {
                
                theItem.style.transform =  'scale(1)';
                theItem.style.opacity = '100%';
                theItem.style.transitionDuration = '1ms';
            }
          }
        }
      }
  /*
  if(displayinfoitem != inv_weight && displayinfoitem != container_weight)
  {
    if(!displayinfoitem.parentElement.classList.contains('slot'))//nem ruhákra húzta, akkor lehet highlightolni
      {
        if(displayinfoitem.inuse)
        {
          displayinfoitem.style.outline = 'solid 1px #02c39a';
        }
        else
        {
          displayinfoitem.style.outline = 'none';
        }
        
      }
  }*/
}

function setInventoryWeights(cur, capac)
{
inv_weight.currentweight = cur;
inv_weight.capacity = capac;
let percent = (parseFloat(cur) / parseFloat(capac)) * 100;
inv_weight.firstElementChild.style.width = percent + '%';
inv_weight_display.innerHTML = (cur/1000).toFixed(1) + ' / ' + (capac/1000).toFixed(1) + ' kg';
}

function setContainerWeights(cur, capac)
{
container_weight.currentweight = cur;
container_weight.capacity = capac;
let percent = (parseFloat(cur) / parseFloat(capac)) * 100;
container_weight.firstElementChild.style.width = percent + '%';
container_weight_display.innerHTML = (cur/1000).toFixed(1) + ' / ' + (capac/1000).toFixed(1) + ' kg';
}