
# No console, pode usar os comandos abaixo para testar se os elementos são encontrados
# $('#flash'); -> flash é o id > # pq é um id > verifica se o elemento existe
# $('#flash').text(); -> flash é o id > # pq é um id > text é a função
# fill_in usa o atributo name ou id

describe 'Forms' do
    it 'login com sucesso' do

        visit 'https://training-wheels-protocol.herokuapp.com/login'

        fill_in 'userId', with: 'stark'
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        expect(find('#flash').visible?).to be true

        # Ambos código abaixo validam a notificação
        # Validar texto identico -> eql
        # Validar se o texto contém no elemento -> include
        # 1- Obtendo o texto e perguntando se o valor contém no texto (comparação de string)
        # 2 - Se existe o conteúdo (string) no elemento (verifica direto no elemento)

        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
        expect(find('#flash')). to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end
end