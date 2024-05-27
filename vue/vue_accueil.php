<main>
 <!-- Contenu de la page : Accueil sans connexion -->
    <div class="rectangle_accueil">
        <!-- Contenu de la page : Titre, Slogan, Bouton formation, Logo -->
        <div class="rectangle_gauche">
            <div class="appTitle">It Safe Campus</div>

            <div class="appSlogan">
                <p>[STAGING] La sécurité numérique commence par la connaissance.</p>
            </div>

            <div style="height: 50%;"></div>

            <!-- renvoie sur une page de connexion -->
            <div class="" style="margin-left: 30%;">
                <a href="index.php?page=1"><button class="bouttonFormation">Commencer ma formation</button></a>
            </div>
        </div>

        <div class="rectangle_droit">
            <img src = "images/Logo_en_gros.png"/>
        </div>
    </div>

    <!-- Contenu de la page : les différentes thématiques -->
    <h2>Nos thématiques</h2><hr>

    <!-- Conteneur des thématique -->
    <div class="thematiques">
        <!-- Permet de faire un affichage dynamique avec la BDD en sélectionnant toute les thématiques de la BDD -->
        <?php
            $lesThematiques = $unControleur -> selectAllThematiquesAccueil();
            foreach ($lesThematiques as $uneThematique) {
        ?>
            <!-- Conteneur d'une thématique -->
            <div class="rectangle_couleur">
                <!-- Conteneur de l'image de la thématique -->
                <div class="thematique">
                    <img src="<?php echo "images/".$uneThematique['URL']; ?>" alt="" />
                </div>

                <!-- Conteneur de la description de la thématique -->
                <div class="thematique_desc">
                    <?php echo $uneThematique['description']; ?>

                    <div class="div_bouttonCommencer">
                        <a href="index.php?page=1">
                            <button name="commencer" class="bouttonCommencer">Commencer</button>
                        </a>
                    </div>
                </div>
            </div>
        <?php
            }
        ?>
    </div>
</main>
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
