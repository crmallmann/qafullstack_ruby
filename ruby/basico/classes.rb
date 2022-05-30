# Ruby é uma linguagem considerada puramente orientada a objetos
# porque no Ruby, tudo são objetos!

# Classe possui atributos e métodos
# Características e Ações

# Carro (nome, marca, modelo, cor, quantidade de portas, etc)
# Métodos -> ligar, businas, para, etc...

class Carro 

    attr_accessor :nome

    def ligar
        puts 'O carro está pronto para iniciar o trajeto.'
    end

end


civic = Carro.new
civic.nome = 'Civic 2022'

puts civic.nome
civic.ligar