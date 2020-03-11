import UIKit

// Enumeración Velocidades
enum Velocidades : Int {
    // Valores Enumeración
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    // Inicializador
     init( velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
}
//  Clase Auto
class Auto{
    //  Variable que es una instancia de la enumeración Velocidades
    var velocidad : Velocidades
    
    //  Función inicializadora que crea una instancia de Velocidades: velocidad, debe iniciar en Apagado.
    init() {
        self.velocidad = Velocidades.init(velocidadInicial: Velocidades.Apagado)
    }
    
//  Cambia el valor de velocidad a la siguiente velocidad gradual,debe regresar una tupla con la velocidad actual y una cadena con la leyenda de
//  la velocidad correspondiente.
    func cambioDeVelocidad() ->(actual: Int, velocidadEnCadena: String){
            
            let actual : Int
            let velocidadEnCadena : String
            
            // Cambia la velocidad según la propiedad actual, cargando primeramente los valores de retorno en
            // las respectivas constantes y posteriormente cambiando la velocidad a la siguiente, menos en el caso de VelocidadAlta
            switch(velocidad){
            case Velocidades.Apagado:
                actual = velocidad.rawValue
                velocidadEnCadena = "Apagado"
                self.velocidad = Velocidades.VelocidadBaja
                break
            case Velocidades.VelocidadBaja:
                actual = velocidad.rawValue
                velocidadEnCadena = "Velocidad Baja"
                self.velocidad = Velocidades.VelocidadMedia
                break
            case Velocidades.VelocidadMedia:
                actual = velocidad.rawValue
                velocidadEnCadena = "Velocidad Media"
                self.velocidad = Velocidades.VelocidadAlta
                break
            case Velocidades.VelocidadAlta:
                actual = velocidad.rawValue
                velocidadEnCadena = "Velocidad Alta"
                self.velocidad = Velocidades.VelocidadMedia
                break
            }
            
            return (actual, velocidadEnCadena)
        }
}

//  Prueba de la clase Auto  iterando 20 veces el método cambioDeVelocidad() y sus salidas se observan en la consola
//  Instancia de la clase Auto
var auto = Auto()

//  Bucle for para iterar 20 veces
for i in 1...20 {
    // Variable para recoger la tupla devuelta por la función cambioDeVelocidad
    let tupla = auto.cambioDeVelocidad()
    // Mostrado por consola de los valores formateados con interpolación de variables
    print("\(i). \(tupla.actual), \(tupla.velocidadEnCadena)")
}



