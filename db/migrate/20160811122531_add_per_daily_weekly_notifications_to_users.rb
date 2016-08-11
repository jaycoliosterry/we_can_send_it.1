class AddPerDailyWeeklyNotificationsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :per_daily_weekly_notifications, :string
  end
end
