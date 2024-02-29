const formRegister = document.getElementById('userRegister');
const usernameEl = document.getElementById('username');
const firstNameEl = document.getElementById('firstName');
const passwordEl = document.getElementById('password');
const confirmPasswordEl = document.getElementById('confirmPassword');

function isRequired(elementValue){
    if(elementValue == ""){
        return false
    }else{
        return true
    }
}
function showError(input,message){
    const formField = input.parentElement;
    formField.classList.remove("success")// class css
    formField.classList.add("error")// class css
    const errorEl = formField.querySelector("small")
    errorEl.textContent = message
}
// J'ai besoin d'une fonction qui permette d'afficher l'element valide en vert
function showSuccess(input){
    const formField = input.parentElement;
    formField.classList.remove("error")// class css
    formField.classList.add("success")// class css
    const errorEl = formField.querySelector("small")
    errorEl.textContent = ""
}
const checkUserName = () => {
    let valid = false;
    const username = usernameEl.value; 
    if(!isRequired(username)){
        showError(usernameEl,"Entrer votre nom")
    }else{
        showSuccess(usernameEl);
        valid = true;
    }
    return valid;
}
const checkFirstName = () => {
    let valid = false;
    const firstname = firstNameEl.value; 
    if(!isRequired(firstname)){
        showError(firstNameEl,"Entrer votre prénom")
    }else{
        showSuccess(firstNameEl);
        valid = true;
    }
    return valid;
}
const checkPassword = () => {
    let valid = false;
    const password = passwordEl.value; 
    if(!isRequired(password)){
        showError(passwordEl,"Entrer votre prénom")
    }else{
        showSuccess(passwordEl);
        valid = true;
    }
    return valid;
}
const checkConfPassword = () => {
    let valid = false;
    const confirmPassword = confirmPasswordEl.value;
    const password = passwordEl.value;
    if(!isRequired(confirmPassword)){
        showError(confirmPasswordEl,"Entrer votre confirmation")
    }else if(password !== confirmPassword){
        showError(confirmPasswordEl,"Votre mp ne correspond pas")	
    }else{
        showSuccess(confirmPasswordEl);
        valid = true;
    }
    return valid;
}
formRegister.addEventListener("submit", (e) => {
    e.preventDefault();
    let usernameOk = checkUserName(),
    firstnameOk = checkFirstName(),
    passwordOk = checkPassword(),
    confirmationOk = checkConfPassword();

    let isFormValid = usernameOk && firstnameOk && passwordOk && confirmationOk;
   
    if(isFormValid){
        const user_nom = usernameEl.value;
        const user_prenom = firstNameEl.value;
        const password = passwordEl.value
        
        fetch('http://localhost:3000/user', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({ 'user nom':user_nom, 'user prenom':user_prenom, password})
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
    }

})






