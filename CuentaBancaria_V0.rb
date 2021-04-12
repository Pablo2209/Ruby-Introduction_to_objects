class CuentaBancaria
    attr_accessor :usuario, :cuenta
    def initialize(usuario, cuenta)
        @usuario = usuario
        @cuenta = cuenta
    end
end

puts "Ingrese un usuario y el numero de cuenta de 8 digitos"

var1 = CuentaBancaria.new(gets, cuenta = gets.chomp.to_i)
puts "El nombre del usuario es #{var1.usuario} "
#conversion de entero a array y conteo cantidad de datos
var2 = cuenta.to_s.split("").count
#Metodo para deterninar si la cuenta està correcta
def error_cuenta(var2)
    if var2 != 8
        puts "cuenta incorrecta"
    else 
        puts "cuenta correcta - Nº Digitos #{var2}"  
    end
end
error_cuenta(var2)

#Metodo para encontrar las cuentas VIP
var3 = Random.rand(-1...2)
    if var2 == 8 && var3 == 1 
        puts "VIP#{var3} - #{cuenta}" 
    else var2 == 8 && var3 = 0
        puts "Estandar#{var3} - #{cuenta}" 
    end
