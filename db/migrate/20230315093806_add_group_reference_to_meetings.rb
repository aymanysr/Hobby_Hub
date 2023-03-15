class AddGroupReferenceToMeetings < ActiveRecord::Migration[7.0]
  def change
    add_reference :meetings, :group, foreign_key: true
  end
end
