"use strict";

let productos = ["Procesadores", "Almacenamiento", "Mothers",
"Placas de Video", "Memorias RAM", "Fuentes de Poder", "Gabinetes"];

let btn = document.getElementById("generar");
btn.addEventListener("click", mostrar);

function generarrandom(max){
    let random = Math.floor(Math.random() * max);
    return random;
}

function productorandom(){
    let elegido = productos[generarrandom(productos.length)];
    return elegido;
}

function mostrar(){
    let mostrar = document.getElementById("random");
    mostrar.innerHTML = productorandom();
}
    
