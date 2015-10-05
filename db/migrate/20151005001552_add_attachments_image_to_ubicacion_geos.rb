class AddAttachmentsImageToUbicacionGeos < ActiveRecord::Migration
  def change
  	add_column :ubicacion_geos, :image_file_name, :string
    add_column :ubicacion_geos, :image_content_type, :string
    add_column :ubicacion_geos, :image_file_size, :integer
    add_column :ubicacion_geos, :image_updated_at, :datetime
  end
end
