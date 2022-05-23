class CreateDucks < ActiveRecord::Migration[6.1]
  def change
    create_table :ducks do |t|
      t.float :price
      t.string :location
      t.text :description
      t.string :name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
