// Acho que é melhor completar ou modificar o código abaixo:


const btnAdicionar = document.getElementById("btn-adicionar");
const ajudaTotal = document.getElementById("ajuda-total");
const ajudaMedia = document.getElementById("ajuda-media");
const txtPessoa = document.getElementById("txtpessoa");
const txtvalor = document.getElementById("txtvalor");
const list = document.getElementById("list");
const formu =document.querySelector("form");
var total = 0
const AJUDAS = [];


function atualizarTotal(nome){
    // substituir código abaixo
    let indi = 0;
    AJUDAS.forEach((nome) => {
        indi += parseFloat(nome.doacao);
    });
    total =indi;
    ajudaTotal.innerHTML = ` é ${total} `;
    atualizarMedia();
}



function atualizarMedia(){
let nun = AJUDAS.length;
let med = (total/nun);

ajudaMedia.innerHTML =(med);
}



function removerAjuda(posicao){
    if (confirm("realmente excluir contribuinte")) {
        AJUDAS.splice(posicao, 1);
        listarAjudas();
    }
}


function listarAjudas(){
    list.innerHTML=""
AJUDAS.forEach( function ( nome, posicao ){
    list.innerHTML +=
    `
            <div class="item">
            <span class="name">${nome.nome}</span>
            <span class="value">(💲${nome.doacao})</span>
            <a href="javascript:removerAjuda(${posicao})">
                <img src="img/trash.svg">
            </a>
            `
            
    });

    atualizarTotal();
}


btnAdicionar.addEventListener("click", (event)=>{

list.innerHTML = "";

const contribuidor = {

    nome : txtPessoa.value,

    doacao : txtvalor.value,
    
}

AJUDAS.push(contribuidor);

listarAjudas();
formu.reset();

});


listarAjudas();
atualizarTotal();

