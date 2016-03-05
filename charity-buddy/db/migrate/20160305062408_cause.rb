class Cause < ActiveRecord::Migration
  def change
  	add_column :causes, :amount, :integer
  end
end
