
const emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

function validateForm() {
    let username = document.getElementById('username').value;
    let name = document.getElementById('name').value;
    let firstName = document.getElementById('firstName').value;
    let dob = document.getElementById('dob').value;
    let email = document.getElementById('email').value;
    let password = document.getElementById('password').value;
    let confirmPassword = document.getElementById('confirmPassword').value;
    let gender = document.querySelector('input[name="gender"]:checked');

    if (!username || !name || !firstName || !dob || !email || !password || !confirmPassword || !gender) {
        alert('Veuillez remplir tous les champs.');
        return false;
    }

    if (password !== confirmPassword) {
        alert('Les mots de passe ne correspondent pas.');
        return false;
    }

    if (!emailRegex.test(email)) {
        alert('Adresse e-mail invalide.');
        return false;
    }

    return true;
}