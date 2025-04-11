object luke {
  var cantidadViajes = 0
  var recuerdo = null
  var vehiculoActual = superChatarraEspecial
  method cantidadViajes() = cantidadViajes
  method cambiarVehiculo(nuevoVehiculo) {vehiculoActual = nuevoVehiculo}
 method vehiculoActual() = vehiculoActual



  method viajar(lugar){
    if (lugar.puedeLlegar()) {


    cantidadViajes = cantidadViajes + 1
    recuerdo = lugar.recuerdoTipico()
    vehiculoActual.consumirCombustible()
    }
    if (lugar == paris && self.vehiculoActual() == antiguallaBlindada) {
        antiguallaBlindada.cantidadGangsters(antiguallaBlindada.gangsters() + 2)

    }
  }
  method recuerdo() = recuerdo
}


object paris{
  method recuerdoTipico() = "Llavero Torre Eiffel"
  method puedeLlegar() = luke.vehiculoActual().tieneCombustible()
}


object buenosaires {
  method recuerdoTipico() = "Mate"
  method puedeLlegar() {luke.vehiculoActual().esRapido() }
}


object bagdad {
  var recuerdo = "bidon de petroleo"
  method recuerdoTipico() = recuerdo
  method recuerdo(nuevo) {recuerdo = nuevo}
  method puedeLlegar() = true
}


object lasVegas {
  var homenaje = paris
  method homenaje(lugar) {homenaje = lugar}
  method recuerdoTipico() = homenaje.recuerdoTipico()
  method puedeLlegar() = homenaje.puedeLlegar()
  }

  object nuevaYork {
    var recuerdo = "estatua de la libertad"
    method recuerdoTipico() = recuerdo
    method recuerdo(nuevo) {recuerdo = nuevo}
    method puedeLlegar() = luke.vehiculoActual().esRapido() && luke.vehiculoActual().tieneCombustible()
  }


object alambiqueVeloz {
  var combustible = 100
  const esRapido = true
  const consumoPorViaje = 10
  method tieneCombustible() = combustible >= consumoPorViaje
  method consumirCombustible() {
    combustible = combustible - consumoPorViaje
  }
  method esRapido() = esRapido
}


object superChatarraEspecial {
  var municiones = 10
  var combustible = 100
  const consumoPorViaje = 10
  const consumoPorDisparo = 5
  method tieneCombustible() = combustible >= consumoPorViaje
  method consumirCombustible() {
    combustible = combustible - consumoPorViaje - consumoPorDisparo
  }
  method tieneMuniciones() = municiones > 0
  method disparar() {


    if (self.puedeDisparar()) {
      municiones = municiones - 1
      combustible = combustible - consumoPorDisparo
   
    }
  }


 method puedeDisparar() = self.tieneCombustible() && self.tieneMuniciones()
  method esRapido() = false
   
 
 
}


object antiguallaBlindada {
  
  var gangsters = 3
  var combustible = 100
  const consumoPorViaje = 10
  method tieneCombustible() = combustible > consumoPorViaje
  method esRapido() = gangsters < 3
  method gangsters() = gangsters
  method cantidadGangsters(nuevaCantidad) {gangsters = nuevaCantidad}
  method consumirCombustible() {combustible = combustible - consumoPorViaje}
}

object superConvertible {
    var vehiculoConvertido = null
  method vehiculoConvertido() = vehiculoConvertido
  method convertirseEn(unVehiculo) {vehiculoConvertido = unVehiculo} 
  method esRapido() = vehiculoConvertido.esRapido()
  method consumirCombustible() = vehiculoConvertido.consumirCombustible()
  method tieneCombustible() = vehiculoConvertido.tieneCombustible()

}

