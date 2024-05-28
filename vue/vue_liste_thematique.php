<!-- Contenu de la page : Affichage des thématiques -->
<!-- Conteneur du titre -->
<div class="titre_thematique">
    <h2>Nos thématiques</h2>
    <hr style="width: 60%;">
</div>

<!-- Appel la fonction selectAllThematiquesAccueil -->
<?php
    $lesThematiques = $unControleur -> selectAllThematiquesAccueil();
    //boucles sur toute les données dans la fonction pour afficher toutes les thématiques
    foreach ($lesThematiques as $uneThematique) {
?>
    <!-- Conteneur d'une thématique : image, résumé -->
    <div class="thematique_liste">
        <div class="image_thematique" style="flex-direction: column;align-items: center;">
            <a href="index.php?page=7&id_thematique=<?php echo $uneThematique['id_thematique']; ?>">
                <img src="<?php echo "images/".$uneThematique['URL']; ?>" alt="" style=""/>
            </a>
        </div>
        <div class="resume">
            <p><?php echo $uneThematique['description']; ?></p>
        </div>
    </div>

    <div class="separation">
        <hr>
    </div>

<?php
    }
?>
<!-- Intégration de la partie HTML du chatbot -->
<div id="open-chat-button" onclick="toggleChat()">💬</div>
<div id="chatbot-container">
    <button id="close-chat-button" onclick="toggleChat()">Fermer</button>
    <div id="messages"></div>
    <div id="user-input-container">
        <input type="text" id="user-input" placeholder="Entrez votre message..." onkeydown="if(event.key === 'Enter') sendMessage()">
        <button id="send-button" onclick="sendMessage()">Envoyer</button>
    </div>
</div>
<!-- Intégration du fichier Javascript du chatbot -->
<script src="script.js"></script>
