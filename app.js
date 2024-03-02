/*Backend functions 
npm install      /(pour installer tout)/
npm install -y
npm install express
npm i -D node
npm start      /(pour starter le serveur)*/
 import express, { json } from 'express';
 import { createConnection } from 'mysql2';
 import cors from 'cors';
 
 const app = express();
 const port = 3000;
 
 // Configuration des middlewares
 app.use(json());
 app.use(cors());
 // Informations de connexion à la base de données
 const db = createConnection({
     host: 'localhost',
     user: 'root',
     password: 'root',
     database: 'spacetravel',
     port: '8889'
 });
 
 // Établissement de la connexion à la base de données
 db.connect((err) => {
     if (err) {
         console.log('Erreur lors de la connexion à la base de données :', err);
         return;
     }
     console.log('Connecté à la base de données MySQL');
 });

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
app.get('/lastuser', (req, res) => {
    db.query('SELECT * FROM user ORDER BY iduser DESC LIMIT 1', (err, results) => {
        if (err) {
            res.status(500).send(err);
        } else {
            res.json(results);
        }
    });
});
// route pour créer un voyage  
app.post('/travel', (req,res) => {
    const {user_iduser,trajet_idtrajet,pilote_idpilote,'date voyage':date_voyage} = req.body;
    
    const query = 'INSERT INTO `voyage` (`user_iduser`, `trajet_idtrajet`,`pilote_idpilote`, `date voyage`) VALUES (?, ?, ?, ?)';

     db.query(query, [user_iduser,trajet_idtrajet,pilote_idpilote,date_voyage], (err, results) => {
    if (err) {
      console.error('Erreur lors de l\'insertion des données :', err);
      res.status(500).json({error:'Erreur lors de l\'insertion des données dans la base de données'});
      return;
    }
   
    res.status(201).json({message:"Nouveau voyage inséré avec succès !"});
  });
})


app.listen(port, () => {
    console.log(`Example app listening on port ${port}`);
})