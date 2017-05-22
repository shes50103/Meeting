class AddMeetingDetail < ActiveRecord::Migration[5.1]
  def change
  	add_column :chatrooms, :start_at, :datetime
  	add_column :chatrooms, :end_at, :datetime
  	add_column :chatrooms, :outline, :text
  end
end
