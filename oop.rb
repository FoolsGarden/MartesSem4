
Inheritance
=begin
   herencia de clases: permite llevar atributos de una clase a otra
class Mammal  
  def breathe  
    puts "inhale and exhale"  
  end  
end  
  
class Cat < Mammal  
  def speak  
    puts "Meow"  
  end  
end  
  
rani = Cat.new  
rani.breathe  
rani.speak 
=end

Composition

=begin
   tiene unafuncionalidad parecida a la herencia, podría ser conveniente
   usarlo vs herencia en caso de requerir flexibilidad/extensibilidad 
   n el código cuando en incierto el futuro del código
module Sleeper
  def go_to_sleep
    # implementation
  end
end
class Person
  include Sleeper
end
class Computer < Sleeper
end
=end

Encapsulation

=begin
   empaqueta los datos de una clase en un solo componente, los valores son
   proporcionados desde el exterior
   class Document
  attr_accessor :name
 
  def initialize(name)
    @name = name
  end
 
  def set_name(name)
    @name = name
  end
end
d = Document.new('name1')
d.set_name('name1')
=end

Duck Typing

=begin
   se refiere a que Ruby se enfoca más a los metodos (el que hace) de un objeto
   que a su clase (donde pertenece) en si, entonces un objeto se define por lo
   que puede hacer, no por lo que es.
función calcular(a, b, c) => devuelve (a+b)*c
ejemplo1 = calcular (1, 2, 3)
ejemplo2 = calcular ([1, 2, 3], [4, 5, 6], 2)
ejemplo3 = calcular ('manzanas ', 'y naranjas, ', 3)
mostrar a_cadena ejemplo1
mostrar a_cadena ejemplo2
mostrar a_cadena ejemplo3
9
[1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6]
manzanas y naranjas, manzanas y naranjas, manzanas y naranjas,  
=end

The Law of Demeter (ej.)

=begin
    La noción fundamental es que dado un objeto, este debería asumir tan poco
    como sea posible sobre la estructura o propiedades de cualquier otro
    (incluyendo sus subcomponentes).
    parafraseado como "sólo hablar con sus vecinos inmediatos" o "utilizar sólo un punto".
=end


Overriding Methods (and using super)

=begin
  si super() esta vacío, Ruby envía un mensaje al padre del objeto actual,
  invocando un método llamado igual, devolviendo el valor de ese método
  require 'delegate'
class Foo
  def bar
    'Hello'
  end
end 
class WrappedFoo < DelegateClass(Foo)
  def initialize(wrapped_foo)
    super
  end
  def bar
    super + ' World'
  end
end
foo = Foo.new # this is not actually in your code, it comes from somewhere else
wrapped_foo = WrappedFoo.new(foo) # this is under your control
wrapped_foo.bar # => 'Hello World'
=end


Modules

=begin
   Los módulos son una forma de agrupar métodos, clases y constantes. Los módulos
   le dan dos beneficios principales:
Los módulos proporcionan un espacio de nombres y evitan conflictos de nombres.
Los módulos implementan la instalación mixin.
=end

Scope

=begin
   alcance: se refiere a la disponibilidad de la información (variables) en un código,
   siempre hay que evaluar que tan conveniente es tener todo accesible, como información
   privada o de importancia alta.
   Class variable (@@a_variable)
   Instance variable (@a_variable)
   Global variable ($a_variable)
   Local variable (a_variable)
=end

Private vs Public Methods

      * Instance vs Class methods and variables
=begin
   la diferencia entre variables de instancia y de método es el alcance (scope), donde se
   van a mandar llamar y para que.
   las variables de instancia solo serán accesibles para el método donde son creadas
   las variables de clase, están accesibles para todo método que este dentro de la clase
=end

      * Polymorphism

=begin
   es la provisión de una única interfaz a entidades de diferentes tipos.
   enviamos el mismo mensaje a diverso objeto y conseguimos resultado diferente.
class Document
  def initialize
  end
 
  def print
    raise NotImplementedError, 'You must implement the print method'
  end
end
class XmlDocument < Document
 
  def print
    p 'Print from XmlDocument'
  end
 
end
class HtmlDocument < Document
 
  def print
    p 'Print from HtmlDocument'
  end
 
end
XmDocument.new.print # Print from XmlDocument
HtmlDocument.new.print # Print from HtmlDocument
=end

Separation of Concerns

=begin
   es un principio de diseño para separar un programa informático en secciones distintas, tal que cada sección enfoca un interés delimitado
=end