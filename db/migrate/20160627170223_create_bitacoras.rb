class CreateBitacoras < ActiveRecord::Migration
  def change
    create_table :bitacoras do |t|
      t.string :nombre
      t.integer :telefono
      t.string :correo
      t.string :municipio
      t.string :estado
      t.string :area
      t.boolean :acreditado
      t.string :alcalde
      t.string :esquema
      t.boolean :convenio
      t.string :tipo
      t.string :acuerdo
      t.date :fechaacuerdo
      t.date :fechaseguimiento
      t.date :fechaevaluacion
      t.string :resultado

      t.timestamps null: false
    end
  end
end
