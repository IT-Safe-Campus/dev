<h1>Résultat du QCM</h1>
<?php
    $id = mysqli_connect("localhost","root","","itsafecampus");
    $note = 0;
    
    foreach($_POST as $id_question=>$id_reponse){
        $req = "select * from quizz_reponse where id_reponse=$id_reponse and verite = 1";
        $res = mysqli_query($id,$req);

        if(mysqli_num_rows($res)>0){
            $note = $note + 4;
        }else{
            ?>
            <div class="reponse">

            
            <h3><u>Tu t'es planté à la question :</u> </h3>

            <?php
            $req2="select * from quizz_question where id_question='$id_question'";
            $res2=mysqli_query($id,$req2);
            $ligne=mysqli_fetch_assoc($res2);
            ?>
                <p class="question_error"><?=$ligne['libelleQ']?></p>
                <h4><u>Il fallait répondre :</u></h4>
            <?php

                $req3="select * from quizz_reponse where id_question='$id_question' and verite=1";
                $res3=mysqli_query($id,$req3);
                $ligne3=mysqli_fetch_assoc($res3);

            ?>
                <p><?=$ligne3['libelleR']?></p>
            </div>
            <?php
        }
    }
?>
<center><h2>Tu as eu <?=$note?>/20</h2></center>