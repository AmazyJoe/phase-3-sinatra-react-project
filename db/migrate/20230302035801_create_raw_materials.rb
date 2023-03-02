class CreateRawMaterials < ActiveRecord::Migration[6.1]
  def change
    create_table :raw_materials do |t|
      t.string :name
      t.string :image_url
      t.references :user, foreign_key: true
      t.integer :temperature
      t.string :description
      t.string :maturity_period
      t.string :environmental_conditions
      t.timestamps
    end
  end
end

 
