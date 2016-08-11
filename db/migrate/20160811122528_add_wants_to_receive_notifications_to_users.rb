class AddWantsToReceiveNotificationsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :wants_to_receive_notifications, :boolean
  end
end
