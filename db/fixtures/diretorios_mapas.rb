root_id = Diretorio.where(name: 'root').ids[0]

for diretorio in Diretorio.all do
  diretorio_path = diretorio.path

  if diretorio_path.include?('/root/')
    diretorio.id = Diretorio.where(path: diretorio_path).ids[0]

    DiretoriosMapa.seed do |dm|
      dm.parent = root_id
      dm.child  = diretorio.id
    end
  end
end

