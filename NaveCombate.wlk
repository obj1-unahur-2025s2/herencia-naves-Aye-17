import NAVE.*


//NAVE COMBATE

class NaveCombate inherits Nave{
    //Distintos tipos de nave
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

    //Preparar viaje
    override method prepararViaje(){
        super()
        self.ponerseVisible()
        self.replegarMisiles()
        self.acelerar(15000)
        self.emitirMensaje("Saliendo en misión")
    }

    //Tranquilidad
    override method naveTranquila(){
        return
        super()
        self.replegarMisiles()
    }

    //Reacción ante amenazas
    override method recibirAmenaza(){
        self.acercarseUnPocoAlSol()
        self.acercarseUnPocoAlSol()
        self.emitirMensaje("Amenaza recibida")
    }
}


class NaveCombateSigilosa inherits NaveCombate{
    //Tranquilidad
    override method naveTranquila(){
        return
        super()
        self.ponerseVisible()
    }

    //Reacción ante amenazas
    override method recibirAmenaza(){
        super()
        self.desplegarMisiles()
        self.ponerseInvisible()
    }

}