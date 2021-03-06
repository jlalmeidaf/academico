#coding: utf-8

require 'spec_helper'

feature 'cadastrar documentos do aluno' do

  scenario 'cadastro normal' do
    visit new_aluno_path
    fill_in 'Nome', :with => 'Kirill'
    fill_in 'E-mail', :with => 'kirillsk8@gmail.com'
    fill_in 'Pai', :with => 'Sergio'
    fill_in 'Mãe', :with => 'Elena'
    fill_in 'Data de nascimento', :with => '23/01/1990'
    fill_in 'Sexo', :with => 'Masculino'
    fill_in 'Nacionalidade', :with => 'Brasileiro'
    fill_in 'Naturalidade', :with => 'Russo'
    fill_in 'Estado civil', :with => 'Solteiro'

    fill_in 'Cpf', :with => '12797827732'
    fill_in 'Rg', :with => '209912310'
    fill_in 'Orgao emissor do rg', :with => 'Detran'
    fill_in 'Estado do rg', :with => 'RJ'
    fill_in 'Data de expedicao do rg', :with => '20/09/2009'
    fill_in 'Numero do titulo de eleitor', :with => '12121212121'
    fill_in 'Zona do titulo de eleitor', :with => '98'
    fill_in 'Secao do titulo de eleitor', :with => '103'
    fill_in 'Estado do titulo de eleitor', :with => 'RJ'
    fill_in 'Data de emissao do titulo de eleitor', :with => '10/01/2009'
    fill_in 'Numero do certificado de reservista', :with => '324343'
    fill_in 'Orgao do certificado de reservista', :with => 'exercito'
    fill_in 'Categoria do certificado de reservista', :with => 'a'
    fill_in 'Data de emissao do certificado de reservista', :with => '10/02/2009'
    fill_in 'Estado do certificado de reservista', :with => 'RJ'


    click_button 'Salvar'

    page.should have_content 'Aluno cadastrado com sucesso.'
    page.should have_content 'Nome: Kirill'
    page.should have_content 'E-mail: kirillsk8@gmail.com'
    page.should have_content 'Filiação'
    page.should have_content 'Pai: Sergio'
    page.should have_content 'Mãe: Elena'
    page.should have_content 'Data de nascimento: 23/01/1990'
    page.should have_content 'Sexo: Masculino'
    page.should have_content 'Nacionalidade: Brasileiro'
    page.should have_content 'Naturalidade: Russo'
    page.should have_content 'Estado civil: Solteiro'

    page.should have_content 'CPF: 127.978.277-32'
    page.should have_content 'RG: 209912310'
    page.should have_content 'Orgão Emissor do RG: Detran'
    page.should have_content 'Estado do RG: RJ'
    page.should have_content 'Data de Expedição do RG: 20/09/2009'
    page.should have_content 'Número do Título de Eleitor: 12121212121'
    page.should have_content 'Zona do Título de Eleitor: 98'
    page.should have_content 'Seção do Título de Eleitor: 103'
    page.should have_content 'Estado do Título de Eleitor: RJ'
    page.should have_content 'Data de Emissão do Título de Eleitor: 10/01/2009'
    page.should have_content 'Número do Certificado de Reservista: 324343'
    page.should have_content 'Orgão do Certificado de Reservista: exercito'
    page.should have_content 'Categoria do Certificado de Reservista: a'
    page.should have_content 'Data de Emissão do Certificado de Reservista: 10/02/2009'
    page.should have_content 'Estado do Certificado de Reservista: RJ'

    page.should have_content 'Editar'
    page.should have_content 'Voltar'

  end

end

