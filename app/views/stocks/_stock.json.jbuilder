json.extract! stock, :id, :company_id, :mark_stock_as_to_be_destroyed, :title, :description, :client_reference_code, :height_in_cm, :width_in_cm, :length_in_cm, :paper_size, :number_of_pages, :weight_in_kg, :stock_image, :quantity_currently_in_stock, :total_ever_in_stock, :total_ever_sent, :total_damaged_or_destroyed, :parcel_id, :created_at, :updated_at
json.url stock_url(stock, format: :json)