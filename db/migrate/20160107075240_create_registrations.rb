class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
    	t.string :name
    	t.string :country
    	t.string :state
    	t.string :address

      t.timestamps null: false
    end
  end
end
