class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
      t.integer :address_id
      t.string :recipient_name
      t.string :recipient_job_title
      t.string :recipient_email_address
      t.string :recipient_phone_number
      t.references :address, index: true
      t.references :parcel, index: true

      t.timestamps
    end
  end
end
