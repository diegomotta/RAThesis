class CreateConsultaClientes < ActiveRecord::Migration
  def change
    create_table :consulta_clientes do |t|
      t.string :nombre
      t.string :correo
      t.string :telefono
      t.string :descripcion
      t.references :empresa, index: true
      t.timestamps
    end
  end
end
