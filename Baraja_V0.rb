class Baraja
    attr_accessor :cartas
    def initialize
        @cartas = []
        color = ["C", "D", "E", "T"]
        
        color.each do |color|
            13.times do |numero|
                @cartas << Carta.new(numero + 1, pinta)
            end
        end
    end

    def barajar
        @cartas.shuffle! 
    end
    

    def sacar
        @cartas.first
    end

    def repartir
        self.barajar
        @mano = []
        @cartas.each_with_index do |carta, index|
            if index + 1 <= 5
                @mano << carta
            end
        end
        @mano
    end
end    