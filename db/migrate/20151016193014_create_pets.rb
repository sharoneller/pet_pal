class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.text :description
      t.date :birthday
      t.string :image_file_name

      t.timestamps
    end
  end
end
