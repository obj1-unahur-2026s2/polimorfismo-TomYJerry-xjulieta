object tom {
    var energia = 50
    method energia() = energia
    method estaFeliz() = self.energia() > 50
    
    method correr(metros) {
        energia -= (metros / 2)
    }

    method comer(raton) {
        energia += (12 + raton.peso())
    }

    method velocidadMaxima() = 5 + (self.energia() / 10)

    method puedeCazar(distancia) = energia > (distancia / 2)

    method cazar(raton, distancia) {
        if (self.puedeCazar(distancia)) {
            self.comer(raton)
        }
    }
}

object jerry {
    var edad = 2
    method peso() = edad * 20
    method cumplirAnios() {
        edad += 1
    }
}

object nibbles {
    method peso() = 35
}

object perez {
    method peso() = 15
}
