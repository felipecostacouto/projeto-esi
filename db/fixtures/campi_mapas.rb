root_id = Campi.where(name: 'root').ids[0]

for campi in Campi.all do
  campi_path = campi.path

  if campi_path.include?('/root/')
    campi.id = Campi.where(path: campi_path).ids[0]

    CampiMapa.seed do |cm|
      cm.parent = root_id
      cm.child  = campi.id
    end
  end
end

