class CreateNoticiaEmpresas < ActiveRecord::Migration
  def change
    create_table :noticia_empresas do |t|
      t.string :titulo
      t.text :descripcion
      t.references :empresa, index: true

      t.timestamps
    end
    add_attachment :noticia_empresas, :image
  end
end
