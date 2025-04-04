
object paquete {
var esPago = false

	method puedeSerEntregado(destino, mensajero){
	 return esPago && destino.puedePasar(mensajero)
	}

	method esPago(_esPago) {
	 esPago = _esPago 
	}

}

object puenteDeBrooklyn {
	method  puedePasar(mensajero){
	  return mensajero.peso() <= 1000
	}
}

object laMatrix {

	method  puedePasar(mensajero) {
	  return mensajero.puedeLlamar()
	}
}

object chuckNorris {
	const peso = 900

	method puedeLlamar() {
		return true
	}

	method peso() {
	  return peso
	}

}

object neo {
	var tieneCredito = false
	var peso = 0

	method puedeLlamar(){
		return tieneCredito
	}

	method peso(){
		return peso
	}


}

object camion {
	var acoplados = 0

	method  pesoTransporte() {
	  return 500 + (acoplados * 500)
	}

	method acoplados(_acoplados) {
	  acoplados = _acoplados
	}
}

object bicicleta {
	method  pesoTransporte() {
	  return 10
	}
}

object lincolnHawk {
var peso = 0
var transporte = bicicleta

	method puedeLlamar(){
	  return false
	}

	method peso() {
	  return peso + transporte.pesoTransporte()
	}

	method peso(_peso) {
	  peso = _peso
	}

	method transporte(_transporte) {
	   transporte = _transporte
	}
}
