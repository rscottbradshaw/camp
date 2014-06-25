class AddAgeToCampers < ActiveRecord::Migration
  def change
    add_column :campers, :age, :integer
  end
end
