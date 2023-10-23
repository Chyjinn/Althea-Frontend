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
            playButton.textContent = 'Play';
            playButton.classList.add('play-button');

            playButton.addEventListener('click', function () {
                playButtons.forEach(button => {
                    button.textContent = 'Play';
                });
                playButton.textContent = 'Pause';
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
                    otherMenuCell.style.fontWeight = '';
                    const otherContentCell = otherMenuCell.nextElementSibling;
                    otherContentCell.style.display = 'none';
                }
                menuButton.classList.add('active');
                menuCell.style.backgroundColor = '#4CAF50';
                menuCell.style.color = 'white';
                menuCell.style.fontWeight = 'bold';
                contentCell.style.display = 'table-cell';
                activeMenu = item;
            } else {
                menuButton.classList.remove('active');
                menuCell.style.backgroundColor = '';
                menuCell.style.color = '';
                menuCell.style.fontWeight = '';
                contentCell.style.display = 'none';
                activeMenu = null;
            }
        });
        menuButton.setAttribute('data-name', item.name);
    });
});
