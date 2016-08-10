class ChangeDataTypeForConvenio < ActiveRecord::Migration
  def change
  		change_column :bitacoras, :convenio, :string
  end
end
