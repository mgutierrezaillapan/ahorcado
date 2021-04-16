require './lib/codebreaker'

describe Codebreaker do
    it "numero correcto" do
        codebreaker = Codebreaker.new "8000"
        mensaje = codebreaker.arriesgar "8000"
        expect(mensaje).to eq "Número correcto, Ganaste!"
    end

    it "numero incorrecto" do
        codebreaker = Codebreaker.new "8000"
        mensaje = codebreaker.arriesgar "7123"
        expect(mensaje).to eq "----"
    end

    it "1er dígito correcto" do
        codebreaker = Codebreaker.new "1234"
        mensaje = codebreaker.arriesgar "1555"
        expect(mensaje).to eq "#---"
    end

    it "1er y 2do dígito correcto" do
        codebreaker = Codebreaker.new "1234"
        mensaje = codebreaker.arriesgar "1255"
        expect(mensaje).to eq "##--"
    end
end