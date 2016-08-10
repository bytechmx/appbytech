class AddEstatusEstructuraGruposcomunitariosAmpliacionmetasTcfechallamadaTcfechacorreoTcobservacionesToBitacoras < ActiveRecord::Migration
  def change
    add_column :bitacoras, :estatus, :string
    add_column :bitacoras, :gruposcomunitarios, :string
    add_column :bitacoras, :ampliacionmetas, :string
    add_column :bitacoras, :tcfechallamada, :date
    add_column :bitacoras, :tcfechacorreo, :date
    add_column :bitacoras, :tcobservaciones, :text
  end
end
