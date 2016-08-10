class ChangeDataTypeForTelefono < ActiveRecord::Migration
  def change
  	change_column :bitacoras, :telefono, :integer, limit: 8
  end
end
