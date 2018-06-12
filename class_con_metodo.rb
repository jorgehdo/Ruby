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

  def menores_de_30
    usuarios.select do |usuario| 
      edad = obtener_edad(usuario)
      pp "#{usuario[:nombre]} y #{edad}" if edad < 30
    end 
  end

  def eliminar_menores_de_40
    usuarios.delete_if  do |usuario| 
      obtener_edad(usuario) < 40
    end
  end

  def obtener_edad(usuario)
    usuario[:inf_adicional][:datos_de_nacimiento][:edad]
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

puts "-----------------------------
Agrupados por pais: "

objeto.agrupar_por_pais
puts "-----------------------------
Menores de 30: "
objeto.menores_de_30
puts "-----------------------------
Eliminar menores 40"
puts objeto.eliminar_menores_de_40



