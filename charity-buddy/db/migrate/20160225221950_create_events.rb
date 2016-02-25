class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string :name
    	t.datetime :time
    	t.integer :donor_id
      t.timestamps null: false
    end
  end
end
