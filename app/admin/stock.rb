ActiveAdmin.register Stock do
  permit_params :mark_stock_as_to_be_destroyed, :title, :description, :client_reference_code, :height_in_cm, :width_in_cm, :length_in_cm, :paper_size, :number_of_pages, :weight_in_kg, :stock_image, :quantity_currently_in_stock, :total_ever_in_stock, :total_ever_sent, :total_damaged_or_destroyed

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
