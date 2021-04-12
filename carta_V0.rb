class Carta
    attr_accessor :mano, :pinta
    def initialize(mano, pinta)
        @mano = mano
        @pinta = pinta.sample
    end
end

var1 = Carta.new(Random.rand(0...14),["c", "d", "e", "t"])
puts var1.mano
puts var1.pinta

