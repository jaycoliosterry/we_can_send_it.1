ActiveAdmin.register Company do
  permit_params :wcsi_admin, :company_name, :user_admin_id, :department, :shipping_address_line_1, :shipping_address_line_2, :shipping_postcode_or_zip, :shipping_city, :shipping_state_or_region, :shipping_country_id, :billing_address_line_1, :billing_address_line_2, :billing_city, :billing_state_or_region, :billing_country_id, :express_courier_rate_id, :economy_courier_rate_id, :postal_courier_rate_id, :billing_email_address, :main_telephone_number

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
