class CreateSkillsets < ActiveRecord::Migration
  def change
    create_table :skillsets do |t|
      t.integer	:staff_id
      t.integer	:tool_id
      t.string	:proficiency

      t.timestamps null: false
    end
  end
end
