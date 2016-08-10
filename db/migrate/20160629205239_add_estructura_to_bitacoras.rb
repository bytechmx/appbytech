class AddEstructuraToBitacoras < ActiveRecord::Migration
  def change
    add_column :bitacoras, :estructura, :string
  end
end
