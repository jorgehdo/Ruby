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

# sumar nombres y devolver los que no estan repetidos 

def sumar_nombres(n, p)
   (n + p).uniq
end

array_1 = ["juan", "pedro", "luis"]
array_2 = ["juan", "pedro", "jorge"]

sumar_nombres(array_1, array_2)

# numeros pares y numeros impares

def numeros_pares(a)
  impar = a.select do |valor|
    valor.odd?
  end

  pares = a.select { |valor| valor.even? }  
  puts "estoas son los numeros impares #{impar} estos son los numeros pares #{pares}"
end

array = [1, 45, 20, 200, 18, 23, 21, 50, 2]

numeros_pares(array) 

