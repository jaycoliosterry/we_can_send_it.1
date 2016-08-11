class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.boolean :wcsi_admin
      t.string :company_name
      t.integer :user_admin_id
      t.string :department
      t.text :shipping_address_line_1
      t.text :shipping_address_line_2
      t.string :shipping_postcode_or_zip
      t.string :shipping_city
      t.string :shipping_state_or_region
      t.integer :shipping_country_id
      t.text :billing_address_line_1
      t.text :billing_address_line_2
      t.string :billing_city
      t.string :billing_state_or_region
      t.integer :billing_country_id
      t.integer :express_courier_rate_id
      t.integer :economy_courier_rate_id
      t.integer :postal_courier_rate_id
      t.string :billing_email_address
      t.string :main_telephone_number
      t.references :user, index: true
      t.references :invoice_line_item, index: true

      t.timestamps
    end
  end
end
