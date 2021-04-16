class Ahorcado

    def initialize 
        @palabra = "scrum"
        @adivinada = ['-', '-', '-', '-', '-'] 
        @arriesgadas = []
    end

    def adivinar(letra)
        if @palabra.include? letra
            @adivinada[@palabra.index(letra)]= letra
        else
            @arriesgadas << letra
        end
        print_palabra
    end

    def print_palabra
        @adivinada.join ' '
    end

    def resultado
        if @palabra == (@adivinada.join '')
            "Ganaste!"
        end
    end

    def print_arriesgadas
        @arriesgadas.join ' '
    end


end