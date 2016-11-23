class TortasPerlita
  def initialize
    @bake_time = rand(7..9)
    @tray = tray_in_oven 
    @reporte = cooking_time
  end

  def tray_in_oven
    tray = []
    10.times do
      tray << Torta.new
    end#do
    tray
  end#tray


  def cooking_time
    reporte = []
      @tray.each do |torta|
        if torta.time == @bake_time
          reporte << "Torta de #{torta.flavor}, lista"
        elsif torta.time > @bake_time
            reporte << "Torta de #{torta.flavor}, cruda"
        elsif torta.time < @bake_time
            reporte << "Torta de #{torta.flavor}, quemada"
        end#if
      end#do
      reporte
  end#cooking_time

  def report
    puts "* Después de #{@bake_time} minutos de horneado... *"
    puts "Las tortas que han salido son: "
    @reporte.each do |value|
      puts value

    end
  end

end
          
class Torta
  attr_accessor :flavor, :time
  def initialize
    @flavor = torta_flavor.keys.sample
    @time = torta_flavor[@flavor]
  end
    def torta_flavor
      {"Jamón" => 7, "Milanesa" => 7, "Carnitas" => 8, "Chorizo" => 7, "Pollo" => 8, "Pierna" => 8, "Salchicha" => 9, "Huevo" => 9, "Frijoles" => 9}
    end
end#class



bandeja = TortasPerlita.new
bandeja.report








