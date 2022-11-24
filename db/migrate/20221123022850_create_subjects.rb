class CreateSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :teacher
      t.string :campi

      t.timestamps
    end
  end
end
