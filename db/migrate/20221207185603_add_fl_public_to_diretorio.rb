class AddFlPublicToDiretorio < ActiveRecord::Migration[7.0]
  def change
    add_column :diretorios, :flPublic, :string
    add_column :diretorios, :boolean, :string
  end
end
