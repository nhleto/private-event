class AddAttendeeToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :attendee_id, :integer
  end
end
