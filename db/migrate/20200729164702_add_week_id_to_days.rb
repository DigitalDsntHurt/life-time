class AddWeekIdToDays < ActiveRecord::Migration[6.0]
  def change
    add_column :days, :week_id, :float
  end
end
