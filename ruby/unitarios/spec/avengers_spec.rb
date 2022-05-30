
class AvangersHeadQuarter
    attr_accessor :list

    def initialize
        self.list = []
    end
    
    def put(avenger)
        self.list.push(avenger)    
    end
end

# TDD (DESENVOLVIMENTO CRIADO POR TESTE)
describe AvangersHeadQuarter do
    
    it 'deve adicionar um vingador' do
        hq = AvangersHeadQuarter.new

        hq.put('Spiderman')
        expect(hq.list).to include 'Spiderman'
    end

    it 'deve adicionar uma lista de vingadores' do
        hq = AvangersHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        res = hq.list.size > 0

        expect(res).to be true
    end

    it 'thor deve ser o primeiro da lista' do
        hq = AvangersHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        expect(hq.list).to start_with('Thor')
    end

    
    it 'Iroman deve ser o último da lista' do
        hq = AvangersHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        hq.put('Iroman')

        expect(hq.list).to end_with('Iroman')
    end

    it 'deve conter o sobrenome' do
        avenger = 'Peter Parker'

        expect(avenger).to match(/Parker/)
        expect(avenger).not_to match(/Cibele/)
    end
end