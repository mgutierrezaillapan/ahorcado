require './lib/ahorcado'

describe Ahorcado do
    it "letra correcta" do
        ahorcado = Ahorcado.new
        mensaje = ahorcado.adivinar "s"
        expect(mensaje).to eq "s - - - -"
    end

    it "letra incorrecta" do
        ahorcado = Ahorcado.new
        mensaje = ahorcado.adivinar "a"
        expect(mensaje).to eq "- - - - -"
    end

    it "palabra correcta" do
        ahorcado = Ahorcado.new
        
        mensaje = ahorcado.adivinar "s"
        mensaje = ahorcado.adivinar "c"
        mensaje = ahorcado.adivinar "r"
        mensaje = ahorcado.adivinar "u"
        mensaje = ahorcado.adivinar "m"

        resultado = ahorcado.resultado

        expect(mensaje).to eq "s c r u m"
        expect(resultado).to eq "Ganaste!"
    end
end