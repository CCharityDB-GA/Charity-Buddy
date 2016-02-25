class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
    	t.string :cause
    	t.string :event
    	t.integer :donor_id
    	t.integer :event_id
    	t.integer :amount

      t.timestamps null: false
    end
  end
end
