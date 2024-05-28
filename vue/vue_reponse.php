<h1>Résultat du QCM</h1>
<?php
    $creds_data = json_decode(file_get_contents('creds.json'), true);
    $key = $creds_data['bdd'];
    
    $id = new mysqli("db","user",$key,"itsafecampus");
    
    $note = 0;
    
    foreach($_POST as $id_question=>$id_reponse){
        $req = "select * from quizz_reponse where id_reponse=$id_reponse and verite = 1";
        $res = mysqli_query($id,$rep);
        if(mysqli_num_rows($res)>0){
            $note = $note + 4;
        }else{
            ?>
            <p class="color">Tu t'es planté à la question <?=$id_question?> : </p>

            <?php
            $req2="select * from quizz_question where id_question=$id_question";
            $res2=mysqli_query($id,$req2);
            $ligne=mysqli_fetch_assoc($res2);
            ?>
                <p class="question_error"><?=$ligne['libelleQ']?></p>
                <p class="color">Il fallair répondre</p>
            <?php

                $req3="select * from quizz_reponse where id_question=$id_question and verite=1";
                $res3=mysqli_query($id,$req3);
                $lign3=mysqli_fetch_assoc($res3);

            ?>
            <p><?=$ligne3['libelleR']?></p>
            <?php
        }
    }
?>