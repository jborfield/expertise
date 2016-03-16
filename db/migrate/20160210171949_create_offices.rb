class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string	:location
      t.string	:street
  		t.string	:city
  		t.string	:state
  		t.string	:zip
      t.boolean	:remote, :default => true

      t.timestamps null: false
    end
  end
end
