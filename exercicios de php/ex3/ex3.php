<?php
$nome=($_GET["nome"]);
$salario=($_GET["salario"]);
$aumento= ($_GET["aumento"]);

$novo= ($salario+$salario*($aumento*0.01));

echo("<h1>$nome</h1>  $salario <br> $aumento <br> $novo");
?>
<a href="/exercicios/index.html"><div style="color: blue;">retornar</div></a>