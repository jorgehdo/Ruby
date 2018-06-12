def menores_de_30(lista)
  lista.select do |usuario| 
   pp "#{usuario[:nombre]} y #{usuario[:edad]}" if usuario[:edad] < 30
    
  end 
end

usuarios = [
  {
    nombre: "jorge",
    edad: 40
  },
  {
    nombre: "jucer",
    edad: 26
  },
  {
    nombre: "pedro",
    edad: 20
  },
  {
    nombre: "martha",
    edad: 50
  },
  {
    nombre: "luisa",
    edad: 18
  }

]
menores_de_30(usuarios)
