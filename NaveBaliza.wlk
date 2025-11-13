import NAVE.*

//NAVE BALIZA

class NaveBaliza inherits Nave{
    //Distintos tipos de nave

    var property balizaColor = "rojo"

    method cambiarColorDeBaliza(nuevoColor){
        balizaColor = nuevoColor
        listaDeColores.add(nuevoColor)
    }

    //Preparar viaje
    override method prepararViaje(){
        super()
        self.cambiarColorDeBaliza("verde")
        self.ponerseParaleloAlSol()
    }

    //Tranquilidad
    override method naveTranquila(){
        return
        super()
        self.cambiarColorDeBaliza("azul")
    }

    //Reacción ante amenazas
    override method recibirAmenaza(){
        self.irHaciaElSol()
        self.cambiarColorDeBaliza("rojo")
    }

    //Relajo
    const listaDeColores = []

    override method naveRelajada(){
        super()
        listaDeColores.isEmpty()
    }

}