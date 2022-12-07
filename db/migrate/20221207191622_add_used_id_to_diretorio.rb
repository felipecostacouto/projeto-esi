class AddUsedIdToDiretorio < ActiveRecord::Migration[7.0]
  def change
    add_column :diretorios, :userId, :integer
  end
end
