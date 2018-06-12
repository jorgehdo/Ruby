def anagrama(palabra, lista)
	anagramas = lista.select do |elemento|  
  	palabra.split("").sort == elemento.split("").sort
  end

	if anagramas.any?
    	puts "Se encontraron #{anagramas.size} anagrama de #{palabra}: #{anagramas} " 
  	else
   		puts "la palabra #{palabra} no tiene anagramas"
  	end
end
