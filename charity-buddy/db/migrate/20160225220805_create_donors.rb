class CreateDonors < ActiveRecord::Migration
  def change
    create_table :donors do |t|
    	t.string :name
    	t.string :username
    	t.string :email
    	t.integer :lifetime_donations
    	t.integer :user_id

      t.timestamps null: false
    end
  end
end
