class AddColumnDateToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :date, :date
  end
end
