class ChangeWeekIdToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :days, :week_id, :integer
  end
end
