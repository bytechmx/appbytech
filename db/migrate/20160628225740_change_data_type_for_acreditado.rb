class ChangeDataTypeForAcreditado < ActiveRecord::Migration
  def change
  	change_column :bitacoras, :acreditado, :string
  end
end
