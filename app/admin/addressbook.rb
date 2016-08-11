ActiveAdmin.register Addressbook do
  permit_params :customer_id, :visible_to_entire_company, :created_by_user_id, :address_book_name, :address_book_description, :archive_this_address_book

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
