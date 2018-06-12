def eliminar_años_laborados_mayor_de_3(lista)
  lista.delete_if { |x| x[:inf_adicional][:años_laborados] > 3 }
end 


usuarios = [
  {
    nombre: "jorge",
    inf_adicional: {
      años_laborados: 3
    }
  },
  {
    nombre: "jucer",
    inf_adicional: {
      años_laborados: 4
    }
  },
  {
    nombre: "pedro",
    inf_adicional: {
      años_laborados: 6
    }
  },
  {
    nombre: "martha",
    inf_adicional: {
      años_laborados: 1
    }
  },
  {
    nombre: "luisa",
    inf_adicional: {
      años_laborados: 9
    }
  }

]

eliminar_años_laborados_mayor_de_3(usuarios)


def eliminar_mayores_de_20(lista)
  lista.delete_if {|x| x[:edad] > 20 }
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

eliminar_mayores_de_20(usuarios)


