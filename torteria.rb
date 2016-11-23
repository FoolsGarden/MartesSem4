# Necesita preparar diferentes tipos de tortas.
# Necesita meter las tortas por lotes al horno.
# Y lo más importante saber cuando sacarlas.

class Horno

  def bake_time_shuffle
    time = rand(5..25)
  end
end
class Tortas < Tortas
  def initialize(bake_time)
    @bake_time = bake_time
  end

  class Torta_Jamon < Tortas
    if time == bake_time
       "Lista"
    elsif time > (5..7)
       "Cruda"
    elsif time < (8..9)
      "casi lista"
    elsif time < (11..25)
      "quemada"  
    end  
  end
  
  class Torta_Milanesa < Tortas
    if time == time
     "Lista"
    elsif time > (5..10)
     "Cruda"
    elsif time < (10..14)
      "casi lista"
    elsif time < (16) 
      "quemada"
    end   
  end

  class Torta_Pastor < Tortas
    if time == time
      "Lista"
    elsif time > (5..12)
      "Cruda"
    elsif time < (13..19)
      "casi lista"
    elsif time < (21) 
      "quemada"
    end   
  end
end


torta = Torta_Pastor.new(20)
torta = Torta_Milanesa.new(15)
torta = Torta_Jamon.new(10)

p bake_time











