class AddCoordinatesToDuck < ActiveRecord::Migration[6.1]
  def change
    add_column :ducks, :latitude, :float
    add_column :ducks, :longitude, :float
  end
end
