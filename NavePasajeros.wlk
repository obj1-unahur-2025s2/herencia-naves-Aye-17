import NAVE.*

//NAVE PASAJEROS

class NavePasajeros inherits Nave{
    //Distintos tipos de nave
    const pasajeros

    var property comida = 0
    var property bebida = 0
    var property racionesEntregadas = 0

    method cargarComida(cantidadComida){
        comida = comida + (cantidadComida * pasajeros)
    }
    method descargarComida(cantidadComida){
        comida = comida - (cantidadComida * pasajeros)
        racionesEntregadas = racionesEntregadas + cantidadComida
    }
    method cargarBebida(cantidadBebida){
        bebida = bebida + (cantidadBebida * pasajeros)
    }
    method descargarBebida(cantidadBebida){
        bebida = bebida - (cantidadBebida * pasajeros)
        racionesEntregadas = racionesEntregadas + cantidadBebida
    }

    //Preparar viaje
    override method prepararViaje(){
        super()
        self.cargarComida(4)
        self.cargarBebida(6)
        self.acercarseUnPocoAlSol()
    }

    //Reacción ante amenazas
    override method recibirAmenaza(){
        velocidad = velocidad * 2
        self.descargarComida(1)
        self.descargarBebida(2)
    }

    //Relajo
    override method naveRelajada(){
        super()
        racionesEntregadas < 50
    }
}


class NaveHospital inherits NavePasajeros{
    var property quirofanosPreparados = true

    method prepararQuirofanos() {
        quirofanosPreparados = true
    }
    method noHayQuirofanosPreparados() {
        quirofanosPreparados = false
    }

    //Tranquilidad
    override method naveTranquila(){
        return
        super()
        self.noHayQuirofanosPreparados()
    }

    //Reacción ante amenazas
    override method recibirAmenaza(){
        super()
        self.prepararQuirofanos()
    }
}
