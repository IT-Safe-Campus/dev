<!-- Contenue de la page : Affichage du quizz -->
<!-- Permet de récupérer d'il de la thématique et l'id de la formation -->
<?php
    if((isset($_GET['id_thematique']))&&(isset($_GET['id_formation']))){
        $id_thematique = $_GET['id_thematique'];
        $id_formation = $_GET['id_formation'];

        $creds_data = json_decode(file_get_contents('creds.json'), true);
        $key = $creds_data['bdd'];
        
        $id = new mysqli("db","user",$key,"itsafecampus");

?>
    <!-- Conteneur du quizz -->
    <div class="rectangle_accueil" style="height: auto;flex-direction: column;">
        <div class="rectangle_blanc" style="height: auto;width: 60%;">
            <div class="formulaire_quizz">
                <!-- Appel la fonction selectWhereFormations en fonction de l'id thématique -->
                <?php
                    $lesFormations = $unControleur -> selectWhereFormationsQ($id_formation);
                    //boucles sur toute les données dans la fonction
                    foreach ($lesFormations as $uneFormation) {
                ?>
                    <h2>Quizz <?php echo $uneFormation['nom_formation'];?></h2><hr>
                
                    <form method="post" action="" id="quizz_form">
                        <div class="formulaire_question">
                        
                            <!-- Appel la fonction selectWhereQuizz en fonction de l'id formation -->
                            <?php
                                $lesQuizz = $unControleur -> selectWhereQuizz($id_formation);
                                //boucles sur toute les données dans la fonction pour afficher les données du
                                //quizz en fonction de la formation réalisée
                                foreach ($lesQuizz as $unQuizz) {
                            ?>
                                <form method="post" action="" id="quizz_form">
                                    <div class="formulaire_question">
                                        <label><?php echo $unQuizz['libelleQ']; ?></label><hr>
                                        <?php
                                            $req = "select * from quizz_question where id_formation = $id_formation";
                                            $res = mysqli_query($id,$req);
                                            while($ligne = mysqli_fetch_assoc($res)){
                                                $id_question = $ligne['id_question'];
                                        ?>
                                                        
                                                <label><?php $ligne['libelleQ'] ?></label>
                                        <?php
                                            }
                                        ?>
                                        <?php
                                            $req2="SELECT * from quizz_reponse where id_question = $id_question" ;
                                            $res2 = mysqli_query($id,$req2);
                                            while($ligne2 = mysqli_fetch_assoc($res2)){
                                        ?>
                                                <input type="radio" id="" name="" value="<?php echo $ligne2['libelleR'];?>">
                                                <span><?php echo $ligne2['libelleR'];?></label></span><br><br>
                                        <?php
                                            }
                                        ?>
                                    </div>
                                </form>
                            <?php
                                }
                            ?>
                        </div>
                    </form>
                <?php
                    }
                ?>
            </div>
            
            <!-- Bouton qui renvoie les données du formulaire et appel la fonction ??? qui va verifier
                        si les réponses son bonne dans la BDD via quizz.php -->
            <div class="fiche_contact" style="align-items: center;">
                <div id="connect_retour" class="button_connect">
                    <a href="index.php?page=11" class="link2" onclick="document.getElementById('quizz_form').submit();">
                        <button class="bouttonCommencer" style="width: 100%;">Envoyer mes réponses</button>
                    </a>
                </div>
            </div>
        </div>
    </div>
<?php
    }
?>
