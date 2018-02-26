class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :shop_location
      t.string :description
      t.string :category
      t.boolean :available, default: true
      t.string :photo
      t.decimal :price
      t.references :user, foreign_key: true



      t.timestamps
    end
  end
end
