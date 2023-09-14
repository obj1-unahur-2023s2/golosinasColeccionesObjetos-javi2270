
object bombon {
	var peso = 15
	
	method peso() = peso
	
	method precio() = 5

	method sabor() = 'frutilla'
	
	method libreDeGluten() = true
	
	method recibirMordisco() {
		peso -= (peso*0.2)+1
	}
	
}

object alfajor {
	var peso = 300
	
	method peso() = peso
	
	method precio() = 12

	method sabor() = 'chocolate'
	
	method libreDeGluten() = false
	
	method recibirMordisco() {
		peso = 0.max(peso*0.2)
	}
}

object caramelo {
	var peso = 5
	
	method peso() = peso
	
	method precio() = 1

	method sabor() = 'frutilla'
	
	method libreDeGluten() = true
	
	method recibirMordisco() {
		peso = 0.max(peso-1)
	}
}

object chupetin {
	var peso = 7
	
	method peso() = peso
	
	method precio() = 2

	method sabor() = 'naranja'
	
	method libreDeGluten() = true	
	
	method recibirMordisco() {
		peso = 1.max(peso*0.1)
	}
}

object oblea {
	var peso = 250
	
	method peso() = peso
	
	method precio() = 5

	method sabor() = 'vainilla'
	
	method libreDeGluten() = false
	
	method recibirMordisco() {
		if (peso > 70) {
			peso = 0.max(peso/2)
		} else {
			peso = 0.max(peso/4)
		}
	}
}

object chocolatin {
	var peso
	var pesoInicial
	
	method peso() = peso
	
	method pesoInicial(gramos) {
		peso = gramos
		pesoInicial = gramos
	}
	
	method precio() = 0.5 * pesoInicial

	method sabor() = 'chocolate'
	
	method libreDeGluten() = false	
	
	method recibirMordisco() {
		peso = 0.max(peso-2)
	}
}

object golosinaBaniada {
	var property golosinaBase
	var pesoBaniado = 4
	
	method peso() = golosinaBase.peso() + pesoBaniado
	
	method precio() = golosinaBase.precio() + 2
	
	method sabor() = golosinaBase.sabor()
	
	method libreDeGluten() = golosinaBase.libreDeGluten()
	
	method recibirMordisco() {
		golosinaBase.recibirMordisco()
		pesoBaniado = 0.max(pesoBaniado-2) 
		
	}
}

object pastillaTuttiFrutti {
	var peso = 5
	var property libreDeGluten
	const sabores = ['frutilla', 'chocolate', 'naranja']
	var indice = 0
	
	method peso() = peso
	
	method precio() = if(libreDeGluten){7}else{10}
	
	method sabor() = sabores.get(indice)
	
	method recibirMordisco() {
		indice = (indice + 1) % sabores.size() 
		self.sabor()
	}
	
	
}

	






