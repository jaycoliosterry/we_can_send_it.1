class CreateEmailTemplates < ActiveRecord::Migration
  def change
    create_table :email_templates do |t|
      t.references :user, index: true
      t.boolean :available_to_entire_company
      t.string :reply_to_email_address
      t.string :email_subject
      t.text :email_body
      t.text :css

      t.timestamps
    end
  end
end
