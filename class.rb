class Play
  attr_accessor :palabra, :lista

  def initialize(palabra, lista)
    @palabra = palabra
    @lista = lista
  end

  def anagrama
	  anagramas = lista.select do |elemento|  
  	palabra.split("").sort == elemento.split("").sort
    end

    if anagramas.any?
      puts "Se encontraron #{anagramas.size} anagrama de #{palabra}: #{anagramas} " 
    else
      puts "la palabra #{palabra} no tiene anagramas"
    end
  end
end

play = Play.new("amor", ["mora", "roma", "cassa", "ramo"])
#play.anagrama
play.palabra = 'mora'
puts play.palabra
#se enciontraropn 1 anagramas de amor: "roma"