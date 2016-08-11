ActiveAdmin.register Order do
  permit_params :delivery_status, :customer_comments, :customer_uploaded_file, :send_confirmation_emails_to_recipients, :order_number, :total_order_weight, :wcsi_total_order_cost, :customer_total_order_cost_pre_tax, :any_taxable_shipments, :total_tax_on_order, :customer_total_order_cost_with_tax

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
