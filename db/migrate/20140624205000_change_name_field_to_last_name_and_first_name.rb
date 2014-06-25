class ChangeNameFieldToLastNameAndFirstName < ActiveRecord::Migration
  def up
    add_column :counselors, :first_name, :string
    add_column :counselors, :last_name, :string

    Counselor.all.each do |counselor|
      counselor.first_name, counselor.last_name = counselor.name.split(" ")
      counselor.save
    end

    remove_column :counselors, :name
  end

  def down
    add_column :counselors, :name, :string

    Counselor.all.each do |counselor|
      counselor.name = [counselor.first_name, counselor.last_name].join(" ")
      counselor.save
    end

    remove_column :counselors, :first_name
    remove_column :counselors, :last_name
  end
end
