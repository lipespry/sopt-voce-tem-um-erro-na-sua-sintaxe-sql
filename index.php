<?php
    //ini_set('error_reporting', E_ALL);
    //ini_set('display_errors', 1);

    $link = mysqli_connect('localhost','root','','integracao');

    if($link){
        $sql = "SELECT `ID`, `LIVRO_EMPRESTADO`, `NOME_PESSOA`, `ENDEREÇO`, `TELEFONE`, `EMAIL`, `DATA` FROM tb_emprestimo;";
        mysqli_query($link, $sql);
        if ($query_res = mysqli_query($link, $sql)) {
            while ($result = mysqli_fetch_array($query_res)) {
                echo '<ul class="list-group">';
                echo '<li class="list-group-item list-group-item-light">'.$result["LIVRO_EMPRESTADO"].'<br>';
                echo "<a href='exclui_notificação.php?id=".$result['ID']."'>";
                echo "<button class='btn btn-danger' style='border-radius:50px;'><img src='icones/remove.png'></button>";
                echo "</a>";
                echo "</li>";
                echo '</ul>';
            }
        } else {
            mysqli_close($link);
            die("Error ao executar a query:".mysqli_error($link));
        }
        mysqli_close($link);
    }
?>
