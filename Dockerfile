# utiliser une image Node.js
FROM node:18 

#mettre le dossier de travail à /app
WORKDIR /projet 

#copier le package.jsan et le package-lock.json
COPY package*.json ./

#installer les dependances
RUN npm install 

#copier le reste des fichier 
COPY . .

#exposer le port 3000
EXPOSE 3000

#demarrer l'application
CMD [ "npm" , "start" ]