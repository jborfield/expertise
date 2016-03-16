class ProjectsStaffs < ActiveRecord::Migration
  def change
	  create_table :projects_staffs, :id => false do |t|
	    t.integer :project_id
	    t.integer :staff_id
	  end
  end
end
