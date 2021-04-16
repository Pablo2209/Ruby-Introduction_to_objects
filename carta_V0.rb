class Carta
    attr_accessor :numero, :pinta
    def initialize(numero, pinta)
        @numero = numero
        @pinta = pinta.sample
    end
end

var1 = Carta.new(Random.rand(1...14),["c", "d", "e", "t"])
puts var1.numero
puts var1.pinta

