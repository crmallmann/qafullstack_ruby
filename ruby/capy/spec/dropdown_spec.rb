# A tag :dropdown serve para rodar apenas esse cenário
# comando -> rspec --tag @dropdown

describe 'Caixa de seleção', :dropdown do
    
    it 'item especifico simples' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        select('Loki', from: 'dropdown') # funciona para elementos do tipo select que possuem atributo id / id = dropdown
        sleep 3 # temporário
    end


    it 'item especifico com o find' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list') # usa o nome do atributo class / drop é a variável
        drop.find('option', text: 'Scott Lang').select_option # busca dentro do elemento uma opção que tem o texto e depois seleciona a opção
        sleep 3 # temporário
    end

    it 'qualquer item', :sample do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list') # usa o nome do atributo class / drop é a variável
        drop.all('option').sample.select_option # retorna um array de option / sample seleciona um opção aleatória no array / select_option = seleciona a opção
        sleep 1 # temporário
    end
end