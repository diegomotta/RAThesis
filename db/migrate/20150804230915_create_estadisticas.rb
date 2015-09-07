class CreateEstadisticas < ActiveRecord::Migration
  def change
    create_table :estadisticas do |t|
      t.string :califproducto
      t.string :precio
      t.string :imagenempresareg
      t.string :enteroprod
      t.string :sabortoman
      t.string :cuantoconsumo
      t.string :justifprod
      t.string :yerbamedicinal
      t.string :otroproducto
      t.references :empresa, index: true
      t.timestamps
    end
  end
end

