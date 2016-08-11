# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160811170124) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "addressbooks", force: true do |t|
    t.integer  "customer_id"
    t.boolean  "visible_to_entire_company"
    t.integer  "created_by_user_id"
    t.string   "address_book_name"
    t.text     "address_book_description"
    t.boolean  "archive_this_address_book"
    t.integer  "company_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addressbooks", ["company_id"], name: "index_addressbooks_on_company_id"
  add_index "addressbooks", ["user_id"], name: "index_addressbooks_on_user_id"

  create_table "addresses", force: true do |t|
    t.integer  "receiver_company_id"
    t.string   "receiver_company_name"
    t.string   "receiver_company_contact_name"
    t.integer  "address_book_id"
    t.integer  "addressbook_id"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "zip_or_postcode"
    t.string   "city"
    t.string   "state_or_region"
    t.integer  "country_id"
    t.string   "brazilian_federal_tax_id"
    t.string   "brazilian_state_tax_id"
    t.string   "chinese_cr_code"
    t.integer  "user_id"
    t.integer  "parcel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["addressbook_id"], name: "index_addresses_on_addressbook_id"
  add_index "addresses", ["parcel_id"], name: "index_addresses_on_parcel_id"
  add_index "addresses", ["user_id"], name: "index_addresses_on_user_id"

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "companies", force: true do |t|
    t.boolean  "wcsi_admin"
    t.string   "company_name"
    t.integer  "user_admin_id"
    t.string   "department"
    t.text     "shipping_address_line_1"
    t.text     "shipping_address_line_2"
    t.string   "shipping_postcode_or_zip"
    t.string   "shipping_city"
    t.string   "shipping_state_or_region"
    t.integer  "shipping_country_id"
    t.text     "billing_address_line_1"
    t.text     "billing_address_line_2"
    t.string   "billing_city"
    t.string   "billing_state_or_region"
    t.integer  "billing_country_id"
    t.integer  "express_courier_rate_id"
    t.integer  "economy_courier_rate_id"
    t.integer  "postal_courier_rate_id"
    t.string   "billing_email_address"
    t.string   "main_telephone_number"
    t.integer  "user_id"
    t.integer  "invoice_line_item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "companies", ["invoice_line_item_id"], name: "index_companies_on_invoice_line_item_id"
  add_index "companies", ["user_id"], name: "index_companies_on_user_id"

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "economy_courier_prices", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "email_templates", force: true do |t|
    t.integer  "user_id"
    t.boolean  "available_to_entire_company"
    t.string   "reply_to_email_address"
    t.string   "email_subject"
    t.text     "email_body"
    t.text     "css"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "email_templates", ["user_id"], name: "index_email_templates_on_user_id"

  create_table "express_courier_prices", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "weight"
    t.decimal  "zone1"
    t.decimal  "zone2"
    t.decimal  "zone3"
    t.decimal  "zone4"
    t.decimal  "zone5"
    t.decimal  "zone6"
    t.decimal  "zone7"
    t.decimal  "zone8"
    t.decimal  "zone9"
    t.decimal  "zone10"
  end

  create_table "invoice_line_items", force: true do |t|
    t.text     "description"
    t.decimal  "price"
    t.decimal  "tax_percentage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoices", force: true do |t|
    t.integer  "company_id"
    t.string   "invoice_number"
    t.date     "issue_date"
    t.date     "due_date"
    t.boolean  "paid"
    t.boolean  "sales_tax_applicable"
    t.boolean  "emailed_to_client"
    t.string   "purchase_order_number"
    t.integer  "invoice_line_item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "invoices", ["company_id"], name: "index_invoices_on_company_id"
  add_index "invoices", ["invoice_line_item_id"], name: "index_invoices_on_invoice_line_item_id"

  create_table "invoices_orders", force: true do |t|
    t.integer "invoice_id"
    t.integer "order_id"
  end

  add_index "invoices_orders", ["invoice_id"], name: "index_invoices_orders_on_invoice_id"
  add_index "invoices_orders", ["order_id"], name: "index_invoices_orders_on_order_id"

  create_table "orders", force: true do |t|
    t.integer  "invoice_line_item_id"
    t.string   "delivery_status"
    t.text     "customer_comments"
    t.string   "customer_uploaded_file"
    t.boolean  "send_confirmation_emails_to_recipients"
    t.string   "order_number"
    t.integer  "user_id"
    t.decimal  "total_order_weight"
    t.decimal  "wcsi_total_order_cost"
    t.decimal  "customer_total_order_cost_pre_tax"
    t.boolean  "any_taxable_shipments"
    t.decimal  "total_tax_on_order"
    t.decimal  "customer_total_order_cost_with_tax"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["invoice_line_item_id"], name: "index_orders_on_invoice_line_item_id"
  add_index "orders", ["user_id"], name: "index_orders_on_user_id"

  create_table "parcels", force: true do |t|
    t.integer  "order_id"
    t.decimal  "customer_shipment_cost_pre_tax"
    t.boolean  "taxable"
    t.decimal  "tax_rate"
    t.decimal  "tax"
    t.decimal  "customer_shipment_cost_with_tax"
    t.string   "parcel_items_and_quantity"
    t.decimal  "weight_of_parcel"
    t.string   "customs_short_declaration"
    t.text     "customs_long_description"
    t.decimal  "parcel_height"
    t.decimal  "parcel_length"
    t.decimal  "parcel_width"
    t.integer  "parcel_number_in_order"
    t.decimal  "internal_cost_of_parcel"
    t.string   "shipping_carrier"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "parcels", ["order_id"], name: "index_parcels_on_order_id"

  create_table "postal_prices", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "printjobs", force: true do |t|
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "printjobs", ["company_id"], name: "index_printjobs_on_company_id"

  create_table "printspecs", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipients", force: true do |t|
    t.integer  "address_id"
    t.string   "recipient_name"
    t.string   "recipient_job_title"
    t.string   "recipient_email_address"
    t.string   "recipient_phone_number"
    t.integer  "parcel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "recipients", ["address_id"], name: "index_recipients_on_address_id"
  add_index "recipients", ["parcel_id"], name: "index_recipients_on_parcel_id"

  create_table "stock_groups", force: true do |t|
    t.string   "stock_group_title"
    t.text     "stock_group_description"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stock_groups", ["company_id"], name: "index_stock_groups_on_company_id"

  create_table "stocks", force: true do |t|
    t.integer  "company_id"
    t.boolean  "mark_stock_as_to_be_destroyed"
    t.string   "title"
    t.text     "description"
    t.string   "client_reference_code"
    t.decimal  "height_in_cm"
    t.decimal  "width_in_cm"
    t.decimal  "length_in_cm"
    t.string   "paper_size"
    t.string   "number_of_pages"
    t.decimal  "weight_in_kg"
    t.string   "stock_image"
    t.integer  "quantity_currently_in_stock"
    t.integer  "total_ever_in_stock"
    t.integer  "total_ever_sent"
    t.integer  "total_damaged_or_destroyed"
    t.integer  "parcel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "stocks", ["company_id"], name: "index_stocks_on_company_id"
  add_index "stocks", ["parcel_id"], name: "index_stocks_on_parcel_id"

  create_table "stocks_stock_groups", force: true do |t|
    t.integer "stock_id"
    t.integer "stock_group_id"
  end

  add_index "stocks_stock_groups", ["stock_group_id"], name: "index_stocks_stock_groups_on_stock_group_id"
  add_index "stocks_stock_groups", ["stock_id"], name: "index_stocks_stock_groups_on_stock_id"

  create_table "trackings", force: true do |t|
    t.integer  "parcel_id"
    t.text     "signed_for_by"
    t.string   "tracking_code"
    t.string   "tracking_status"
    t.text     "tracking_status_description"
    t.date     "required_to_arrive_before"
    t.boolean  "will_arrive_in_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trackings", ["parcel_id"], name: "index_trackings_on_parcel_id"

  create_table "users", force: true do |t|
    t.string   "email",                          default: "", null: false
    t.string   "encrypted_password",             default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                  default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.string   "username"
    t.integer  "company_id"
    t.boolean  "wants_to_receive_notifications"
    t.string   "per_daily_weekly_notifications"
  end

  add_index "users", ["company_id"], name: "index_users_on_company_id"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
