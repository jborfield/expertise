class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string	:name_first
      t.string	:name_last
      t.integer	:office_id
      t.integer :department_id
      t.string	:title
      t.text		:bio
      t.date		:start

      t.timestamps null: false
    end
  end
end
