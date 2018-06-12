#  usando el delete_if

def anagrama(palabra, lista)
	anagramas = lista.delete_if do |elemento|  
  	palabra.split("").sort != elemento.split("").sort
  end

	if anagramas.any?
    	puts "Se encontraron #{anagramas.size} anagrama de #{palabra}: #{anagramas} " 
  	else
   		puts "la palabra #{palabra} no tiene anagramas"
  	end
end

anagrama("amor", ["jucer", "roma", "mora"])
#se enciontraropn 1 anagramas de amor: "roma"
#se enciontraropn 1 anagramas de amor: "roma"