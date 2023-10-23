let currentlyPlayingButton = null;

// Előre meghatározott szövegek
const predefinedRows = [
    "Első sor",
    "Második sor",
    "Harmadik sor",
    "Negyedik sor"
];

function addPredefinedRow(panel, text) {
    const row = document.createElement("div");
    row.className = "row";
    const span = document.createElement("span");
    span.textContent = text;
    const playButton = document.createElement("button");
    playButton.className = "icon-button";
    const playIcon = document.createElement("img");
    playIcon.src = "pics/play.png";
    playIcon.alt = "Play ikon";
    playButton.appendChild(playIcon);

    playButton.addEventListener("click", function () {
        if (playIcon.src.endsWith("play.png")) {
            if (currentlyPlayingButton) {
                const currentlyPlayingIcon = currentlyPlayingButton.querySelector("img");
                currentlyPlayingIcon.src = "pics/play.png";
            }
            playIcon.src = "pics/pause.png";
            currentlyPlayingButton = playButton;
        } else {
            playIcon.src = "pics/play.png";
            currentlyPlayingButton = null;
        }
    });

    row.appendChild(span);
    row.appendChild(playButton);
    panel.appendChild(row);
}

// A panel megtalálása
const panel = document.getElementById("panel");

// Előre meghatározott szövegek hozzáadása
for (const text of predefinedRows) {
    addPredefinedRow(panel, text);
}

function togglePlayButton(button) {
    if (button.classList.contains("fa-play")) {
        if (currentlyPlayingButton) {
            currentlyPlayingButton.classList.remove("fa-stop");
            currentlyPlayingButton.classList.add("fa-play");
        }
        button.classList.remove("fa-play");
        button.classList.add("fa-stop");
        currentlyPlayingButton = button;
    } else {
        button.classList.remove("fa-stop");
        button.classList.add("fa-play");
        currentlyPlayingButton = null;
    }
}

// Előre meghatározott szövegek hozzáadása
for (const text of predefinedRows) {
    addPredefinedRow(panel, text);
}
// Beállítjuk a képek méretét a sor magasságához
const iconButtons = document.querySelectorAll(".icon-button");
iconButtons.forEach((button) => {
    const row = button.closest(".row");
    const rowHeight = row.clientHeight;
    const playIcon = button.querySelector("img");
    playIcon.style.height = rowHeight + "px";
});
