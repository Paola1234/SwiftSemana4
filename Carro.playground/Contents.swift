//Estructuras
import UIKit

struct Carro{
    var marca : String
    var precio : Double
    
    init(marca:String, precio:Double){
        self.marca=marca
        self.precio=precio
    }
    
    func obtenerDescripcion( ) -> String{
        return "marca: \(marca) precio:\(precio)"
    }
}

var c = Carro(marca: "CarroBMW", precio: 20000)
c.marca
c.precio
c.obtenerDescripcion
