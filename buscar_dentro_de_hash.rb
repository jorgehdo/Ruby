
def eliminar_menores_de_40(lista)
  lista.delete_if  do |x| 
    x[:inf_adicional][:datos_de_nacimiento][:edad] < 40
  end
end

usuarios = [
  {
    nombre: "jorge",
    inf_adicional: {
      años_laborados: 3,
      datos_de_nacimiento: {
        edad: 34
      }
    }
  },
  {
    nombre: "jucer",
    inf_adicional: {
      años_laborados: 4,
      datos_de_nacimiento: {
        edad: 23
      }
    }
  },
  {
    nombre: "pedro",
    inf_adicional: {
      años_laborados: 6,
      datos_de_nacimiento: {
        edad: 45
      }
    }
  },
  {
    nombre: "martha",
    inf_adicional: {
      años_laborados: 1,
      datos_de_nacimiento: {
        edad: 50
      }
    }
  },
  {
    nombre: "luisa",
    inf_adicional: {
      años_laborados: 9,
      datos_de_nacimiento: {
        edad: 23
      }
    }
  }

]

eliminar_menores_de_40(usuarios)
