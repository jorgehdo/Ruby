def palindromo?(palabra)
  return  "Es palindromo" if palabra == palabra.reverse
  "No es palindromo"
end