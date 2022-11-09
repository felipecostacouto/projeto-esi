class CreateCampisMapas < ActiveRecord::Migration[7.0]
  def change
    create_table :campis_mapas do |t|
      t.integer :parent
      t.integer :child

      t.timestamps
    end
  end
end
