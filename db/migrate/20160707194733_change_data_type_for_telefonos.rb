class ChangeDataTypeForTelefonos < ActiveRecord::Migration
  def change
  		change_column :voluntarios, :telefono, :integer, limit: 8
  end
end
