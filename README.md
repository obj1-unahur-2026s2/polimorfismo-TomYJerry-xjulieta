# Tom y Jerry (y Nibbles también!)

## Pautas para la resolución del ejercicio
Desarrollar la solución en el archivo:
- tomYJerry.wlk

No realizar cambios en nombre de archivo, ya que las correcciones solo tienen en cuenta los objetos modelados en los mismos. 
Respecto a los nombres de objetos y nombres de mensajes a utilizar en el modelado, remitirse al **glosario** de "nombres obligatorios" que está al pie de este documento (respetar mayúsculas y minúsculas). En caso que utilicen  nombres distintos, los test de las correcciones no funcionarán y restan puntos de la calificación. Tener en cuenta que pueden y algunas veces deben definir métodos y objetos auxiliares, pero los que figuran como obligatorios si o si tienen que existir para que corran los test, y deben cumplir la funcionalidad correcta.

---

## Enunciado

## Parte 1: velocidad máxima
Hacer un sistema en wollok que modele al gato tom y a los ratones jerry y nibbles 

El sistema tiene dos casos de uso principales: 
* Indicar que tom comió un ratón ( aclarando cuál ratón comió)  
* Indicar que tom corrió una distancia (aclarando cuantos metros). 

Lo que nos interesa de tom es saber la velocidad máxima a la que puede correr, cuanta energía tiene, y si está Feliz o no. Tom está feliz cuando su energía es mayor a 50 (empieza en 50).

La velocidad máxima depende de la energía que tenga. 

La energía va a variar según vaya comiendo ratones y corriendo por ahí:

* Cuando tom corre, su energía disminuye en `cantidad de metros que corrió / 2` 
* Cuando tom come un ratón, su energía aumenta en `12 + el peso del ratón` 
* La velocidad máxima de tom es `5 + energía/10`

Existen 2 ratones.

* Jerry, cuyo peso es la `edad * 20`. Al inicio tiene 2 años, pero puede cumplir años. 
* Nibbles, cuyo peso es 35, siempre

Nota: Acá se trabaja polimorfismo, ordenes, consulta y estado del objeto.

### Caso de prueba

Acá vamos a verificar mediante los test de wollok si nuestro código está correcto. Para este ejercicio vamos a escribirlos como si se tratara de una historia, y por ahora se repetirá código en cada uno de los test, más adelante veremos como evitar eso:

- Al inicio, la velocidad máxima de Tom es 10 (su energía es 50)
- Si come a Jerry, la velocidad máxima pasa a ser  15.2 (su energía es 102)
- Si corre 24 metros, entonces su velocidad máxima pasa a ser 14 (su energía es 90)
- Si come a Nibbles, pasa a tener de velocidad máxima 18.7 (su energía es 137)
- si Jerry cumple años (3 años de edad), y luego Tom lo vuelve a comer, pasaría a tener 25.9 (su energia es 209)  
- si corre 38 metros su velocidad pasa a ser 24 (su energia es 190)

## Parte 2:  Poder comer y cazar.

Se agrega como requerimientos 
* Saber si tom puede cazar un ratón que está a cierta distancia (indicando la distancia)
* Cazar un ratón que está a cierta distancia (indicando el ratón y la distancia)

Puede cazar si tiene energía suficiente para recorrer esa distancia. Es
decir, la energía que gastaría en correr la distancia es menor a su propia energía.

Cazar un ratón si puede, y hacer que lo coma.

Nota: Acá se busca ser capaz de evitar la duplicación de código (subtareas), y manejar correctamente métodos booleanos de consulta.

## Parte 3: Se amplía el menú

Agregar al modelo otro ratón, llamémosle `perez`, que sea distinto a los otros 2 ratones, pero teniendo en cuenta respetar el polimorfismo en relación al objeto tom.

## Casos de prueba

Desarrollar distintos casos de prueba (test) para demostrar que todo funciona correctamente.

### Glosario de nombres de objeto y mensajes obligatorios

#### **Objetos**
- tom
- jerry
- nibbles

#### **Métodos**
- comer
- correr
- velocidadMaxima
- energia
- estaFeliz
- cazar
- peso
- cumplirAnios