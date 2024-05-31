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
                
                    <form method="post" action="index.php?page=11" id="quizz_form">
                        <div class="formulaire_question">
                            <!--<form method="post" action="" id="quizz_form">
                                <div class="formulaire_question"> -->
                                    <?php
                                        $req = "select * from quizz_question where id_formation = $id_formation";
                                        $res = mysqli_query($id,$req);
                                        while($ligne = mysqli_fetch_assoc($res)){
                                            $id_question = $ligne['id_question'];
                                            $libelleQ = $ligne['libelleQ'];
                                            ?>
                                                <br><label><?php echo $libelleQ ?></label><hr><br>

                                            <?php
                                            $req2="SELECT * from quizz_reponse where id_question = $id_question" ;
                                            $res2 = mysqli_query($id,$req2);
                                            while($ligne2 = mysqli_fetch_assoc($res2)){
                                        ?>
                                                <input type="radio" id="<?php $ligne2['id_reponse'] ?>" name="<?=$id_question?>" value="<?php echo $ligne2['id_reponse'];?>">
                                                <span><?php echo $ligne2['libelleR'];?></label></span><br><br>
                                    <?php
                                            }
                                        }
                                    ?>
                                <!--</div>
                            </form>-->

                            <!--<div class="fiche_contact" style="align-items: center;">
                                <div id="connect_retour" class="button_connect">
                                    <input type="submit" class="bouttonCommencer" style="width: 100%;" value="Envoyez mes réponses">
                                </div>
                            </div> -->
                        </div>

                            <!-- Bouton qui renvoie les données du formulaire et appel la fonction ??? qui va verifier
                            si les réponses son bonne dans la BDD via quizz.php -->
                            <div class="fiche_contact" style="align-items: center;">
                                <div id="connect_retour" class="button_connect">
                                    <a href="#" class="link2" onclick="document.getElementById('quizz_form').submit();">
                                        <button class="bouttonCommencer" style="width: 100%;">Envoyer mes réponses</button>
                                    </a>
                                </div>
                            </div>
                        
                    </form>
                <?php
                    }
                ?>
            </div>
        </div>
    </div>
<?php
    }
?>
