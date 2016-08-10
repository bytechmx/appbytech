class AddTemaPcfechallamadaPcfechacorreoPcobservacionesScfechallamadaScfechacorreoScobservacionesToBitacoras < ActiveRecord::Migration
  def change
    add_column :bitacoras, :tema, :string
    add_column :bitacoras, :pcfechallamada, :date
    add_column :bitacoras, :pcfechacorreo, :date
    add_column :bitacoras, :pcfechaobservaciones, :text
    add_column :bitacoras, :scfechallamada, :date
    add_column :bitacoras, :scfechacorreo, :date
    add_column :bitacoras, :scobservaciones, :text
  end
end
