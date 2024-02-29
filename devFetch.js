const trajetSelect = document.querySelector('#trajet');
const piloteSelect = document.querySelector('#pilote');
const formTravel = document.querySelector('#formTravel');
const travelDatEl = document.querySelector('#date');
const destinationEl = document.getElementById('trajet');
const piloteEl = document.getElementById('pilote');


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
        option.value = result.idtrajet;
        option.textContent = result['trajet nom'];
        trajetSelect.appendChild(option);
    })
}
function displayPilotes(results) {
    results.forEach(result => {
        const option = document.createElement("option");
        option.value = result.idpilote;
        option.textContent = result['nom pilote'];
        piloteSelect.appendChild(option);
    })
}
async function fetchLastUser() {
    try {
        const response = await fetch("http://localhost:3000/lastuser");
        const data = await response.json(); // Convertit la réponse en JSON
         // Affiche la réponse dans la console
        return data; // Retourne les données pour un usage ultérieur
    } catch (error) {
        alert("Erreur : " + error);
    }
}
function isRequired(elementValue) {
    if (elementValue == "") {
        return false
    } else {
        return true
    }
}
function showError(input, message) {
    const formField = input.parentElement;
    formField.classList.remove("success")// class css
    formField.classList.add("error")// class css
    const errorEl = formField.querySelector("small")
    errorEl.textContent = message
}
// J'ai besoin d'une fonction qui permette d'afficher l'element valide en vert
function showSuccess(input) {
    const formField = input.parentElement;
    formField.classList.remove("error")// class css
    formField.classList.add("success")// class css
    const errorEl = formField.querySelector("small")
    errorEl.textContent = ""
}


formTravel.addEventListener("submit", (e) => {
    e.preventDefault();

    
        fetchLastUser().then(data => {
            // Utiliser la variable ici
            console.log(data)
            const iduser = data[0].iduser;
            const user_iduser = iduser.toString();
            const date_voyage = travelDatEl.value;
            const trajet_idtrajet = destinationEl.options[destinationEl.selectedIndex].value;
            
            const pilote_idpilote = piloteEl.options[piloteEl.selectedIndex].value;

            fetch('http://localhost:3000/travel', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({ user_iduser,trajet_idtrajet,pilote_idpilote, 'date voyage': date_voyage})
            })
                .then(response => {
                    if (!response.ok) {
                        throw new Error('Network response was not ok: ' + response.statusText);
                    }
                    return response.json();
                })
                .then(data => {
                    console.log('Success:', data);

                })
                .catch((error) => {
                    console.error('Error:', error);
                });
        });
    }



);