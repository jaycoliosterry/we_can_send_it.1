ActiveAdmin.register Address do
  permit_params :receiver_company_id, :receiver_company_name, :receiver_company_contact_name, :address_book_id, :address_line_1, :address_line_2, :zip_or_postcode, :city, :state_or_region, :country_id, :brazilian_federal_tax_id, :brazilian_state_tax_id, :chinese_cr_code

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
