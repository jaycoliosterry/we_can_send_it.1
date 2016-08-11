class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :receiver_company_id
      t.string :receiver_company_name
      t.string :receiver_company_contact_name
      t.integer :address_book_id
      t.references :addressbook, index: true
      t.string :address_line_1
      t.string :address_line_2
      t.string :zip_or_postcode
      t.string :city
      t.string :state_or_region
      t.integer :country_id
      t.string :brazilian_federal_tax_id
      t.string :brazilian_state_tax_id
      t.string :chinese_cr_code
      t.references :user, index: true
      t.references :parcel, index: true

      t.timestamps
    end
  end
end
