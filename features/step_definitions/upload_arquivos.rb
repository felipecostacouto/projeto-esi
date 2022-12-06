Dado('que estou na página de um diretório qualquer') do
  @ids_existentes = Diretorio.ids
  @id_qualquer = @ids_existentes[rand(@ids_existentes.length)]
  visit('diretorios/' << @id_qualquer.to_s)
end

Quando('arrasto um arquivo de nome {string} para onde estão os diretórios') do |nome|
  @nome_arquivo = nome
end

Entao('deverá aparecer o arquivo na lista de arquivos dentro do diretório que estou') do

end

When('o arquivo é muito grande') do
  pending
end

Entao('deve aparecer mensagem dizendo que o arquivo é muito grande') do
  expect(page).to have_content('O arquivo é muito grande.')
end

E('o arquivo tem extensão inválida') do
  pending
end

Entao('deve aparecer mensagem dizendo que o arquivo não tem extensão válida') do
  expect(page).to have_content('O arquivo não tem extensão válida.')
end

E('já existe outro arquivo com o mesmo nome naquele diretório') do
  pending
end

Entao('deve aparecer mensagem perguntando se sobrescreve ou manter o arquivo') do
  expect(page).to have_content('Deseja sobrescrever ou manter o arquivo existente?')
end