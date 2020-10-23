class AddFieldsToEvents < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :user_id, foreign_key: true
  end
end
