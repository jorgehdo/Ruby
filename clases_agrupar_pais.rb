class Usuario
  attr_accessor :usuarios 

  def initialize(usuarios)
    @usuarios = usuarios
  end

  def agrupar_por_pais
    agrupados = usuarios.group_by { |usuario| usuario[:pais]} 
    colombia = agrupados["colombia"] 
    venezuela = agrupados["venezuela"]
    puts "colombia: #{colombia.count} y venezuela: #{venezuela.count}"
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
    },
    pais: "colombia"

  },
  {
    nombre: "jucer",
    inf_adicional: {
      años_laborados: 4,
      datos_de_nacimiento: {
        edad: 23
      }
    },
    pais: "italia"
  },
  {
    nombre: "pedro",
    inf_adicional: {
      años_laborados: 6,
      datos_de_nacimiento: {
        edad: 45
      }
    },
    pais: "colombia"
  },
  {
    nombre: "martha",
    inf_adicional: {
      años_laborados: 1,
      datos_de_nacimiento: {
        edad: 50
      }
    },
    pais: "venezuela"
  },
  {
    nombre: "luisa",
    inf_adicional: {
      años_laborados: 9,
      datos_de_nacimiento: {
        edad: 23
      }
    },
    pais: "peru"
  }

]

objeto = Usuario.new(usuarios)
objeto.agrupar_por_pais
