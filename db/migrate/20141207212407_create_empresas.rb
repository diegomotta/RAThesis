    class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :nombre
      t.string :actividad
      t.string :país
      t.string :provincia
      t.string :localidad
      t.string :dirección
      t.string :telefono
      t.text :misión
      t.text :visión

      t.timestamps
    end
    add_attachment :empresas, :image
  end
end
