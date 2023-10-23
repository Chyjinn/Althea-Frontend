document.addEventListener('DOMContentLoaded', function () {
    const menuData = [
        { name: "Menü 1", rows: 3 },
        { name: "Menü 2", rows: 4 },
        { name: "Menü 3", rows: 5 },
        { name: "Menü 4", rows: 6 }
    ];

    const table = document.createElement('table');
    document.body.appendChild(table);

    let activeMenu = null;
    let isDragging = false;
    let offsetX, offsetY;

    function startDrag(e) {
        isDragging = true;
        offsetX = e.clientX - table.getBoundingClientRect().left;
        offsetY = e.clientY - table.getBoundingClientRect().top;
    }

    function dragTable(e) {
        if (isDragging) {
            table.style.position = 'absolute';
            table.style.left = (e.clientX - offsetX) + 'px';
            table.style.top = (e.clientY - offsetY) + 'px';
        }
    }

    function stopDrag() {
        isDragging = false;
    }

    table.addEventListener('mousedown', startDrag);
    document.addEventListener('mousemove', dragTable);
    document.addEventListener('mouseup', stopDrag);

    menuData.forEach(item => {
        const row = document.createElement('tr');
        const menuCell = document.createElement('td');
        const menuButton = document.createElement('button');
        menuButton.textContent = item.name;
        menuButton.classList.add('menu-button');
        menuCell.appendChild(menuButton);
    
        const contentCell = document.createElement('td');
        contentCell.setAttribute('colspan', '2');
        if (item.name === "Menü 1") {
            contentCell.style.display = 'table-cell';
            menuButton.classList.add('active');
            menuCell.style.backgroundColor = '#4CAF50';
            menuCell.style.color = 'white';
            menuCell.style.fontWeight = 'bold';
            activeMenu = item;
        } else {
            contentCell.style.display = 'none';
        }
    
        const contentTable = document.createElement('table');
        const playButtons = [];
        for (let i = 0; i < item.rows; i++) {
            const contentRow = document.createElement('tr');
            const contentCell = document.createElement('td');
            contentCell.textContent = `Sor ${i + 1}`;
            const playButton = document.createElement('button');
            const playIcon = document.createElement('img');
            playIcon.src = 'pics/play.png'; // Hozzáadott kép forrása
            playIcon.style.width = '20px'; // Kép szélességének beállítása
            playIcon.style.height = '20px'; // Kép magasságának beállítása
            playButton.appendChild(playIcon);
    
            playButton.addEventListener('click', function () {
                if (playButton.firstElementChild.src.includes('pics/play.png')) {
                    playButtons.forEach(button => {
                        button.firstElementChild.src = 'pics/play.png'; // Hozzáadott kép forrása
                    });
                    playButton.firstElementChild.src = 'pics/pause.png'; // Hozzáadott kép forrása
                } else {
                    playButton.firstElementChild.src = 'pics/play.png'; // Hozzáadott kép forrása
                }
            });
    
            contentCell.appendChild(playButton);
            contentRow.appendChild(contentCell);
            contentTable.appendChild(contentRow);
            playButtons.push(playButton);
        }
        contentCell.appendChild(contentTable);
    
        row.appendChild(menuCell);
        row.appendChild(contentCell);
        table.appendChild(row);

        menuButton.addEventListener('click', function () {
            if (activeMenu !== item) {
                if (activeMenu) {
                    const otherButton = document.querySelector(`button[data-name="${activeMenu.name}"]`);
                    otherButton.classList.remove('active');
                    const otherMenuCell = otherButton.parentElement;
                    otherMenuCell.style.backgroundColor = '';
                    otherMenuCell.style.color = '';
                    otherMenuCell.style.fontWeight = 'bold';
                    const otherContentCell = otherMenuCell.nextElementSibling;
                    otherContentCell.style.display = 'none';
                }
                menuButton.classList.add('active');
                menuCell.style.backgroundColor = '#4CAF50';
                menuCell.style.color = 'white';
                menuCell.style.fontWeight = 'bold';
                contentCell.style.display = 'table-cell';
                table.style.width = '20%'; // Alapértelmezett szélesség beállítása
                activeMenu = item;
            } else {
                menuButton.classList.remove('active');
                menuCell.style.backgroundColor = '';
                menuCell.style.color = '';
                menuCell.style.fontWeight = 'bold';
                contentCell.style.display = 'none';
                table.style.width = '20%'; // Alapértelmezett szélesség beállítása
                activeMenu = null;
            }
        });
        menuButton.setAttribute('data-name', item.name);
    });
});