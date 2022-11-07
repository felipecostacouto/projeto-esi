class CreateBuscars < ActiveRecord::Migration[7.0]
  def change
    create_table :buscars do |t|
      t.string :search_input

      t.timestamps
    end
  end
end
