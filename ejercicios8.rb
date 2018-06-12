#Ejercicios hechos en clases

#1 obtener el mayor, menor y del medio. 

def obtener_valores(numero1, numero2, numero3)
 numeros = [numero1, numero2 , numero3].sort
 menor = numeros[0]
 medio = numeros[1]
 mayor = numeros[2]
 
 puts "El numero mayor es #{mayor}, el numero
 del medio es #{medio}, el numero menor es #{menor}"
end

obtener_valores(19, 28, 78)

#2 transformar lista de nombres

def transformar_usuarios(usuarios)
  usuarios.map do |usuario|
    {
      nombres: usuario[:nombre] + ' ' + usuario[:apellido],
      edad: usuario[:edad]
    }
  end
end

usuarios = [
  {
    nombre: 'jucer',
    apellido: 'orozco',
    edad: 30
  },
  {
    nombre: 'jorge',
    apellido: 'espinosa',
    edad: 32
  },
  {
    nombre: 'sophie',
    apellido: 'orozco',
    edad: 2
  }
]

transformar_usuarios(usuarios)

#3 Numeros pares e impares

def numeros_pares(*objts)
  impares = objts.select { |obj| obj.odd? }
  pares = objts.select(&:even?) 
  pp "estos son los numeros pares #{pares} estos son los numeros impares #{impares}" 
end

numeros_pares(1, 10, 20, 35, 9)