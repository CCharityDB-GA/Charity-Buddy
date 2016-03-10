class AddingColumnsToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :notes, :string
  	add_column :events, :attendess, :string
  	add_column :events, :date, :datetime
  	remove_column :events, :donor_id, :string
  end
end
