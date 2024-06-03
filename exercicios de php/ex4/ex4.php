<?php

if (empty($_GET['n1'] && $_GET['n2'] && $_GET['escolha'])) {
    echo('ERRO DE REQUISIÇÃO <BR> <a href="/exercicios/index.html"><div style="color: blue;">retornar</div></a>' );

}
$n1 = ($_GET["n1"]);
$n2 = ($_GET["n2"]);
$escolha = ($_GET["escolha"]);

function triangulo ($n1,$n2){
    echo(($n1*$n2)/2);
}

function maior ($n1,$n2){

if( $n1 > $n2 ){
    echo(" $n1 $n2 ");
}

if( $n2 > $n1 ){
    echo(" $n2 $n1 ");
}

}

function menor($n1, $n2){

    if( $n1 < $n2 ){
        echo(" $n1 $n2 ");
    }
    if( $n2 < $n1 ){
        echo(" $n2 $n1 ");
    }

}
function soma($n1, $n2){

    echo($n1+$n2);

}
function sub($n1, $n2){

    echo($n1-$n2);
}
function cont ($n1, $n2){

    for($n1; $n1 <= $n2; $n1++){
        echo("<br>$n1");
    }
}
function area($n1, $n2){
    echo($n1*$n2);
}

if ($escolha == "a"){
    triangulo($n1,$n2);
}
if ($escolha == "b"){
    maior($n1,$n2);
}
if ($escolha == "c"){
    menor($n1,$n2);
}
if ($escolha == "d"){
    soma($n1,$n2);
}
if ($escolha == "e"){
    sub($n1,$n2);
}
if ($escolha == "f"){
    cont($n1,$n2);
}
if ($escolha == "g"){
    area($n1,$n2);
}
?>