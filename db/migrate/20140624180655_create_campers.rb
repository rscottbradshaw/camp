class CreateCampers < ActiveRecord::Migration
  def change
    create_table :campers do |t|
      t.string :name
      t.references :counselor, index: true
      t.timestamps
    end
  end
end
