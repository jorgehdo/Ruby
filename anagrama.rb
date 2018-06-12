def anagrama(palabra, lista)
	anagramas = []
	lista.each do |elemento|  
  	if palabra.split("").sort == elemento.split("").sort
      anagramas << elemento 
    end
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