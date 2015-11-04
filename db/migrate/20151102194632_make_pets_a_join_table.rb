class MakePetsAJoinTable < ActiveRecord::Migration
  def up
  	Pet.delete_all
  	add_column :pets, :user_id, :integer
  end
  def down
  	Pet.delete_all
  	remove_column :pets, :user_id, :integer
  end
end
