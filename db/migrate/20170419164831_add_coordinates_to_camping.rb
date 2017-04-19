class AddCoordinatesToCamping < ActiveRecord::Migration[5.0]
  def change
    add_column :campings, :latitude, :float
    add_column :campings, :longitude, :float
  end
end
