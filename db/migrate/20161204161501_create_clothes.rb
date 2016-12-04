class CreateClothes < ActiveRecord::Migration[5.0]
  def change
    create_table :clothes do |t|
      t.string :name

      t.timestamps
    end
  end
end
