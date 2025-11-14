//NAVE

class Nave{
    //Modelo básico
    var property velocidad 
    var property direccion

    method acelerar(unaVelocidad){
        velocidad = (velocidad + unaVelocidad).min(100000)
    }
    method desacelerar(unaVelocidad){
        velocidad = (velocidad - unaVelocidad).max(0)
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

    //Preparar viaje
    method prepararViaje(){
        self.cargarCombustible(30000)
        self.acelerar(5000)
    }

    //Combustible
    var property combustible

    method cargarCombustible(unCombustible){
        combustible += unCombustible
    }
    method descargarCombustible(unCombustible){
        combustible -= unCombustible
    }

    //Tranquilidad
    method naveTranquila(){
        return
        combustible >= 4000
        velocidad < 12000
    }

    //Reacción ante amenazas
    method recibirAmenaza()

    //Relajo
    method naveRelajada(){
        self.naveTranquila()
    }

}






/*
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
*/
