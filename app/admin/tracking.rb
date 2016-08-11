ActiveAdmin.register Tracking do
  permit_params :signed_for_by, :tracking_code, :tracking_status, :tracking_status_description, :required_to_arrive_before, :will_arrive_in_time

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
