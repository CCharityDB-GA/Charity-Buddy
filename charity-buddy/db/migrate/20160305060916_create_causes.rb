class CreateCauses < ActiveRecord::Migration
  def change
    create_table :causes do |t|
    	t.string :name, null: false
    	t.string :notes
      t.timestamps null: false
    end
  end
end
