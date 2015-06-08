class CreateInformacionEmpresas < ActiveRecord::Migration
  def change
    create_table :informacion_empresas do |t|
      t.string :itemTitulo
      t.references :empresa, index: true

      t.timestamps
    end
  end
end
