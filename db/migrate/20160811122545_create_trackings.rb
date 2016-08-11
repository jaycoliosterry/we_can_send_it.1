class CreateTrackings < ActiveRecord::Migration
  def change
    create_table :trackings do |t|
      t.references :parcel, index: true
      t.text :signed_for_by
      t.string :tracking_code
      t.string :tracking_status
      t.text :tracking_status_description
      t.date :required_to_arrive_before
      t.boolean :will_arrive_in_time

      t.timestamps
    end
  end
end
