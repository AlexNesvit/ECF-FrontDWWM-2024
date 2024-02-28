const trajetSelect = document.querySelector('#trajet');
const piloteSelect = document.querySelector('#pilote');


document.addEventListener("DOMContentLoaded", () => {
    fetch("http://localhost:3000/trajets")
    .then(response => response.json())
    .then(response => displayTrajets(response))
    .catch(error => alert("Erreur : " + error));
    fetch("http://localhost:3000/pilotes")
    .then(response => response.json())
    .then(response => displayPilotes(response))
    .catch(error => alert("Erreur : " + error));
});
function displayTrajets(results) {
    results.forEach(result => {
        const option = document.createElement("option");
        option.value = result['trajet nom'];
        option.textContent = result['trajet nom'];
        trajetSelect.appendChild(option);
    })
}
function displayPilotes(results) {
    results.forEach(result => {
        const option = document.createElement("option");
        option.value = result['nom pilote'];
        option.textContent = result['nom pilote'];
        piloteSelect.appendChild(option);
    })
}