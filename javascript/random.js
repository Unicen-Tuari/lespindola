"use strict";

const productos = ["Procesadores", "Almacenamiento", "Mothers",
 "Placas de Video", "Memorias RAM", "Fuentes de Poder", "Gabinetes"];


const aleatorio = (max) => Math.floor(Math.random() * max);

const obteneraleatorio = () => productos[aleatorio(productos.length)];

const mostraraleatorio = () => {
  document.getElementById('random').innerHTML = obteneraleatorio();
}

document.getElementById('generar')
  .addEventListener('click', mostraraleatorio);

mostraraleatorio();

