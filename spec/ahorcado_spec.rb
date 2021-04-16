require './lib/ahorcado'

describe Ahorcado do
    it "letra correcta" do
        ahorcado = Ahorcado.new
        mensaje = ahorcado.adivinar "s"
        expect(mensaje).to eq "s----"
    end
end