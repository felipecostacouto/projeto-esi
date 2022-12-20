class RemoveFlPublicFromDiretorio < ActiveRecord::Migration[7.0]
  def change
    remove_column :diretorios, :flPublic, :string
    remove_column :diretorios, :boolean, :string
  end
end
