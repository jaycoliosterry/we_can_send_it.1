class CreateAddressbooks < ActiveRecord::Migration
  def change
    create_table :addressbooks do |t|
      t.integer :customer_id
      t.boolean :visible_to_entire_company
      t.integer :created_by_user_id
      t.string :address_book_name
      t.text :address_book_description
      t.boolean :archive_this_address_book
      t.references :company, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
