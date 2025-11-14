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

/*
const navecita = new NaveBaliza(velocidad=10, direccion=0)
navecita.cambiarColorDeBaliza(azul)
navecita.balizaColor()
*/

/*
const navecita = new Nave(velocidad = 10, direccion = 0)
navecita.acelerar(5000000)
navecita.velocidad()
navecita.desacelerar(-6)
navecita.velocidad()
navecita.acercarseUnPocoAlSol()
navecita.direccion()
*/

object cosa{
    
}







































/*



Naves de combate

 prepararViaje() se pone visible.

 prepararViaje() repliega los misiles.

 prepararViaje() acelera 20000 kms/seg (5000 + 15000).

 prepararViaje() emite el mensaje "Saliendo en misión".

 prepararViaje() carga 30000 litros de combustible.

 ------------------------------------------------

 TESTS DE MENSAJES (solo naves de combate)

 emitirMensaje("Hola") agrega el mensaje a la lista.

 primerMensajeEmitido() devuelve el primero.

 ultimoMensajeEmitido() devuelve el último.

 emitioMensaje("Texto") devuelve true si existe ese mensaje.

 esEscueta() devuelve true si ningún mensaje supera 30 caracteres.

 --------------------------------------------------

 TESTS DE TRANQUILIDAD

Condiciones generales para todas las naves:

 Está tranquila si tiene al menos 4000 litros de combustible.

 Está tranquila si su velocidad ≤ 12000 kms/seg.

Específicas:

 Nave-baliza: el color ≠ "rojo".

 Nave de combate: los misiles no están desplegados.

 Nave de combate sigilosa: misiles no desplegados y visible.

 Nave hospital: quirófanos no preparados.

 -------------------------------------------------

 TESTS DE AMENAZAS
Naves-baliza

 recibirAmenaza() cambia dirección a ir hacia el Sol (10).

 recibirAmenaza() cambia color de baliza a "rojo".

Naves de pasajeros

 recibirAmenaza() duplica su velocidad (máx. 100000).

 recibirAmenaza() reduce raciones de comida en 1 por pasajero.

 recibirAmenaza() reduce raciones de bebida en 2 por pasajero.

Naves de combate

 recibirAmenaza() ejecuta acercarseUnPocoAlSol() dos veces.

 recibirAmenaza() emite el mensaje "Amenaza recibida".

Naves hospital

 recibirAmenaza() hace lo mismo que nave de pasajeros.

 Luego, deja los quirófanos preparados.

Naves de combate sigilosas

 recibirAmenaza() hace lo mismo que nave de combate.

 Además despliega misiles y se pone invisible.

 ---------------------------------------------

 TESTS DE RELAJO

Una nave está “de relajo” si está tranquila y además tiene poca actividad:

 Nave-baliza: nunca cambió el color de la baliza.

 Nave de pasajeros: ha servido en total menos de 50 raciones de comida.

(Las otras naves no tienen condición especial de relajo en tu descripción.)

-------------------------------------------------------

TESTS DE HERENCIA / VARIANTES

 La nave hospital hereda el comportamiento de la nave de pasajeros.

 La nave de combate sigilosa hereda de la nave de combate.

 Los métodos de prepararViaje() y recibirAmenaza() se comportan correctamente en las subclases (sin duplicar lógica).

 --------------------------------------------------

 TESTS DE BORDES

 Al acelerar más allá de 100000, se queda en 100000.

 Al desacelerar más allá de 0, se queda en 0.

 Al aumentar dirección más de 10, queda en 10.

 Al disminuir dirección más de -10, queda en -10.

 Si el combustible baja de 4000, deja de estar tranquila.

 Si la velocidad supera 12000, deja de estar tranquila.
 

*/