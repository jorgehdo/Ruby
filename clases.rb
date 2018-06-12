class Play
  attr_accessor :palabra, :lista, :frase

  def initialize(palabra, lista, frase)
    @palabra = palabra
    @lista = lista
    @frase = frase
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

  def palindromo?
    return  "Es palindromo" if frase == frase.reverse
    "No es palindromo"
  end

  def ejemplo
    tamaño
  end

  # el private se utiliza para proteger los metodos
  # que esten abajo de el 
  private

  def tamaño
    lista.size
  end
end

objeto = Play.new("amor", ["mora", "roma", "cassa", "ramo"], 'ana')
#objeto.anagrama
#objeto.palabra = 'mora'
#puts objeto.palabra

puts objeto.palindromo?
puts objeto.ejemplo


#se enciontraropn 1 anagramas de amor: "roma"