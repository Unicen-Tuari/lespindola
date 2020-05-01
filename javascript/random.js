"use strict";

const productos = ["Procesadores", "Almacenamiento", "Mothers",
 "Placas de Video", "Memorias RAM", "Fuentes de Poder", "Gabinetes"];


function aleatorio(){
    Math.floor(Math.random() * max);
}

function obteneraleatorio(){
  productos[aleatorio(productos.length)];
}

function mostraraleatorio(){
   document.getElementById('random').innerHTML = obteneraleatorio();
  }


document.getElementById('generar')
  .addEventListener('click', mostraraleatorio());

mostraraleatorio(productos);

