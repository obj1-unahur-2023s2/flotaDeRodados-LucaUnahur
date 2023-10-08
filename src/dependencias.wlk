import rodados.*
import pedidos.*

class Dependencia {
	var property empleados
	const flota = []
	const pedidosTotales=[]
	
	method agregarPedido(pedido){
		pedidosTotales.add(pedido)
	}
	
	method quitarPedido(pedido){
		pedidosTotales.remove(pedido)
	}
	
	method pasajerosTotalesDePedidos(){
		return pedidosTotales.sum({x=>x.cantidadDePasajeros()})
	}
	
	method relajarPedidos(){
		pedidosTotales.forEach({pedido=>pedido.relajar()})
	}
	   method pedidosInsatisfechos() {
		return  pedidosTotales.filter({p => !flota.any({rod => p.puedeSatisfacerPedido(rod)})})
	}
	method colorIncompatiblePorTodos(color){
		return pedidosTotales.all( { pedido => pedido.coloresIncompatibles() == color } )
	}
	method agregarAFlota(rodado){
		flota.add(rodado)
	}
	
	method quitarDeFlota(rodado){
		flota.remove(rodado)
	}
	
	method pesoTotalFlota(){
		return flota.sum({x=>x.peso()})
	}
	
	method estaBienEquipada(){
		return flota.size()>=3 && flota.all({r => r.velocidadMaxima() >= 100})
	}
	method rodadosDeColor(color){
		return flota.filter({x => x.color() == color})
	}
	method capacidadTotalEnColor(color){
		return self.rodadosDeColor(color).sum({x => x.capacidadDeTransporte()})
	}
	method rodadoMasRapido() {
		return flota.max({x => x.velocidadMaxima()})	
	}
	method colorDelRodadoMasRapido() {
		return 	self.rodadoMasRapido().color()
	}
	method capacidadDeLaFlota(){
		return flota.sum({x=>x.capacidadDeTransporte()})
	}
	method capacidadFaltante(){
		return empleados-self.capacidadDeLaFlota()
	}
	method esGrande(){
		return empleados>=40 && flota.size()>=5
	}
}


