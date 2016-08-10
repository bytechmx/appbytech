class AddAsesorToVoluntarios < ActiveRecord::Migration
  def change
    add_column :voluntarios, :asesor, :string
  end
end
