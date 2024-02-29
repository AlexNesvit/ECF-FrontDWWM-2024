/*Backend functions 
npm install -y
npm install express
npm start
npm i -D nodemon*/
import express, { json } from 'express';
import { createConnection } from 'mysql2';
import cors from 'cors';
const app = express();
const port = 3000;
app.use(json());
app.use(cors());

// informations de connexion databases
const db = createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'spacetravel',
    port: '3306'
})
// connexion
db.connect(err => {
    if (err) {
        console.log('Erreur de connexion à la base données' + err);
        return;
    }
    console.log('connecté à la base de données')
})
// route pour recup tous les trajets
app.get('/trajets', (req, res) => {
    db.query('SELECT * FROM trajet', (err, results) => {
        if (err) {
            res.status(500).send(err);
        } else {
            res.json(results);
        }
    });
});  
// route recup pour tous les pilotes
app.get('/pilotes', (req, res) => {
    db.query('SELECT * FROM pilote', (err, results) => {
        if (err) {
            res.status(500).send(err);
        } else {
            res.json(results);
        }
    });
});  
// route pour ajouter des utilisateurs
app.post('/user', (req,res) => {
    const {'user nom':user_nom,'user prenom':user_prenom,password} = req.body;
    
    const query = 'INSERT INTO `user` (`user nom`, `user prenom`, `password`) VALUES (?, ?, ?)';

     db.query(query, [user_nom,user_prenom,password], (err, results) => {
    if (err) {
      console.error('Erreur lors de l\'insertion des données :', err);
      res.status(500).json({error:'Erreur lors de l\'insertion des données dans la base de données'});
      return;
    }
   
    res.status(201).json({message:"Nouvel utilisateur inséré avec succès !"});
  });
})
// route pour récupérer le dernier utilisateur enregistré




app.listen(port, () => {
    console.log(`Example app listening on port ${port}`);
})