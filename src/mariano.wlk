import golosinas.*

object mariano {
	const golosinas = []
	
	method comprar(unaGolosina) {
		golosinas.add(unaGolosina)
	}
	
	method desechar(unaGolosina) {
		golosinas.remove(unaGolosina)
	}
	
	method cantidadDeGolosinas() = golosinas.size()
	
	method tieneLaGolosina(unaGolosina) = golosinas.contains(unaGolosina)
	
	method probarGolosinas() {
		golosinas.forEach({golosina => golosina.recibirMordisco()})
	}
	
	method hayGolosinaSinTACC() = golosinas.any({golosina => golosina.libreDeGluten()})
	
	method preciosCuidados() = golosinas.all({golosina => golosina.precio() <= 10})
	
	method golosinaDeSabor(unSabor) = golosinas.find({golosina => golosina.sabor() == unSabor})
}


/*
 comprar(unaGolosina) : agrega una golosina a la bolsa de golosinas compradas.
desechar(unaGolosina) : desecha la golosina escogida de la bolsa de golosinas.
cantidadDeGolosinas() : devuelve la cantidad de golosinas compradas.
tieneLaGolosina(unaGolosina) : pregunta si Mariano ya tiene la golosina que se quiere comprar en la bolsa de golosinas.
probarGolosinas() : le da un mordisco a todas las golosinas dentro de la bolsa de golosinas compradas.
hayGolosinaSinTACC() : indica si hay al menos una golosina sin gluten en la bolsa de golosinas compradas.
preciosCuidados() : se cumple cuando cada una de las golosinas compradas tienen un precio menor o igual a 10 pesos.
golosinaDeSabor(unSabor) : devuelve la primer golosina que encuentra en la bolsa del sabor escogido.
golosinasDeSabor(unSabor) : devuelve las golosinas que encuentre dentro de la bolsa del sabor escogido.
sabores() : que devuelve los sabores de las golosinas de la bolsa, idealmente sin repetidos.
P.ej. aunque Mariano tenga tres golosinas de sabor naranja, en lo que devuelve sabores() el naranja debería aparecer una sola vez.
Una forma de resolver esto es usando conjuntos; revolver en el apunte sobre colecciones y closures: https://objetos1wollokunq.gitlab.io/material/guia-colecciones-basicas.pdf.
golosinaMasCara() : devuelve la golosina mas cara en la bolsa de golosinas compradas.
pesoGolosinas() : devuelve el peso de la bolsa de golosinas compradas, o sea, la suma del peso de cada golosina.
 */
