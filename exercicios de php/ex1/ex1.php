<?php
$z=($_GET["valora"]);
$y=($_GET["valorb"]);
$r=($_GET["valorc"]);

if($y > $z && $y > $r){
        
        if($z > $r){
                echo("$y $z $r");
        }
        if($r > $z){
                echo("$y $r $z");
        }
}
if($z > $y && $z > $r){
        
        if($Y > $r){
                echo("$z $y $r");
        }
        if($r > $Y){
                echo("$z $r $y");
        }
}
if($r > $z && $r > $y){
        
        if($z > $y){
                echo("$r $z $y");
        }
        if($y > $z){
                echo("$r $y $z");
        }
}
?>
<a href="/exercicios/index.html"><div style="color: blue;">retornar</div></a>
