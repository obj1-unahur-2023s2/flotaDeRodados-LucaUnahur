
class  ChevroletCorsa {
	var property color
	method capacidadDeTransporte() = 4
	method velocidadMaxima()=150
	method peso()=1300
}


class  RenaultKwid {
	const tieneTanqueAdicional
	method color() = "azul"
	method tieneTanqueAdicional()=tieneTanqueAdicional 
	method capacidadDeTransporte() {
		return 
		if(tieneTanqueAdicional){
			3
		}
		else
		4
	}
	method velocidadMaxima(){
		return
		if(tieneTanqueAdicional){
			120
		}
		else
		110
	}
	method peso(){
		return 
		if(tieneTanqueAdicional){
			1350
		}
		else 
		1200
	}
}


object trafic {
	var property interior 
	var property motor
	method color() = "blanco"
	method capacidadDeTransporte()=interior.capacidad()	
	method velocidadMaxima()= motor.velocidad()
	method peso()=4000+interior.peso()+motor.peso()
	method armar(interiorDesignado, motorDesignado){
		interior=interiorDesignado
		motor=motorDesignado
	}
}



object interiorComodo{
	method capacidad()=5
	method peso()=700
}


object interiorPopular{
	method capacidad()=12
	method peso()=1000
}

object motorPulenta{
	method velocidad()=130
	method peso()=800
}

object motorBataton {
	method velocidad()=80
	method peso()=500
}


class AutosEspeciales{
	var property color 
	var property capacidadDeTransporte
	var property velocidadMaxima
	var property peso
}






















