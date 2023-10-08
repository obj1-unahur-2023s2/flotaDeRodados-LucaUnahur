import rodados.*
import dependencias.*
class Pedido {
	var property distanciaARecorrer
	var property tiempoMaximoViaje
	var property cantidadDePasajeros
	const property coloresIncompatibles =#{} //conjunto
	
	method velocidadRequerida(){
		return distanciaARecorrer/tiempoMaximoViaje
	}
	
	method puedeSatisfacerPedido(auto){
		return auto.velocidadMaxima()>self.velocidadRequerida()+10 && auto.capacidadDeTransporte()>=cantidadDePasajeros
		&& !coloresIncompatibles.contains(auto.color())
	}
	
	method acelerar(){
		tiempoMaximoViaje=0.max(tiempoMaximoViaje-1)
	}
	
	method relajar (){
		tiempoMaximoViaje=0.max(tiempoMaximoViaje+1)
	}
}
