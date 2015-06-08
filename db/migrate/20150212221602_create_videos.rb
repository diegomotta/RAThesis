class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :titulo
      t.string :url
      t.text :descripcion
      t.references :empresa, index: true
      t.timestamps
    end
  end
end
