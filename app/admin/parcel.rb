ActiveAdmin.register Parcel do
  permit_params :customer_shipment_cost_pre_tax, :taxable, :tax_rate, :tax, :customer_shipment_cost_with_tax, :parcel_items_and_quantity, :weight_of_parcel, :customs_short_declaration, :customs_long_description, :parcel_height, :parcel_length, :parcel_width, :parcel_number_in_order, :internal_cost_of_parcel, :shipping_carrier

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
