class Nave{
    var property velocidad 
    var property direccion

    method acelerar(unaVelocidad){
        velocidad = unaVelocidad.min(100000)
    }
    method desacelerar(unaVelocidad){
        velocidad = unaVelocidad.max(0)
    }

    method irHaciaElSol(){
        direccion = 10
    }
    method escaparDelSol(){
        direccion = -10
    }
    method ponerseParaleloAlSol(){
        direccion = 0
    }

    method acercarseUnPocoAlSol(){
        direccion += 1
    }
    method alejarseUnPocoDelSol(){
        direccion -= 1
    }

    method prepararViaje()

}

/*
const navecita = new Nave(velocidad = 10, direccion = 0)
navecita.acelerar(5000000)
navecita.velocidad()
navecita.desacelerar(-6)
navecita.velocidad()
navecita.acercarseUnPocoAlSol()
navecita.direccion()
*/

class NaveBaliza inherits Nave{
    override method prepararViaje(){
        self.cambiarColorDeBaliza("verde")
        self.ponerseParaleloAlSol()
    }

    var property balizaColor = "rojo"

    method cambiarColorDeBaliza(nuevoColor){
        balizaColor = nuevoColor
    }

}

/*
const navecita = new NaveBaliza(velocidad=10, direccion=0)
navecita.cambiarColorDeBaliza(azul)
navecita.balizaColor()
*/

class NavePasajeros inherits Nave{
    override method prepararViaje(){
        self.cargarComida(4)
        self.cargarBebida(6)
    }

    const pasajeros

    var property comida = 0
    var property bebida = 0

    method cargarComida(cantidadComida){
        comida = cantidadComida * pasajeros
    }
    method descargarComida(cantidadComida){
        comida = cantidadComida * pasajeros
    }

    method cargarBebida(cantidadBebida){
        bebida = cantidadBebida * pasajeros
    }
    method descargarBebida(cantidadBebida){
        bebida = cantidadBebida * pasajeros
    }
}

class NaveCombate inherits Nave{
    override method prepararViaje(){
        self.ponerseVisible()
        self.replegarMisiles()
        self.acelerar(15000)
        self.emitirMensaje("Saliendo en misión")
    }


    const mensajes = []
    var property estaInvisible = true

    method ponerseVisible(){
        estaInvisible = false
    }
    method ponerseInvisible(){
        estaInvisible = true
    }

    var property misilesDesplegados = true

    method desplegarMisiles(){
        misilesDesplegados = true
    }
    method replegarMisiles(){
        misilesDesplegados = false
    }

    method emitirMensaje(unMensaje){
        mensajes.add(unMensaje)
    }
    method mensajesEmitidos() = mensajes
    method primerMensajeEmitido() = mensajes.first()
    method ultimoMensajeEmitido() = mensajes.last()
    method emitioMensaje(unMensaje) = mensajes.contains(unMensaje)

    method esEscueta() = mensajes.all({c => c.length() < 30})


}

/*
const navecita = new NaveCombate(velocidad=10, direccion=0)
navecita.emitirMensaje("Hola")
navecita.emitirMensaje("Achu")
navecita.emitirMensaje("Papanatas")
navecita.emitirMensaje("Buenos dias")
navecita.emitirMensaje("Para entender la historia de Five Nights at Freddys")
navecita.emitirMensaje("Navidad")

navecita.mensajesEmitidos()
navecita.ultimoMensajeEmitido()
navecita.primerMensajeEmitido()
navecita.esEscueta()

*/

object prueba {
    method cosa(){
        return
        ["Hola","Mundo","Wollok"].max({x=>x 5})
    }

    var col = ['Hola','Mundo','Wollok','Programación','maachuuuuuumemimomutralalerotralalaaaaaaaaaaaaaaaaapaaaaaaaaaa aloja minorias cuchau panplinas chanfle']

    method algoMejor(){
        return
        col.all({c => c.length() < 30})
    }

}