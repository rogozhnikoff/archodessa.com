ActiveAdmin.register ArchObject do
  permit_params :name, :avatar, :foundation, :status, :user_id

  filter :architects, collection: Architect.all.map(&:get_full_name)
  filter :styles
  filter :types
  filter :user, label: 'Автор', collection: User.all.map(&:email)
  filter :district, as: :select

  index do
    selectable_column
    column :name, :sortable => :name do |arch_object|
      link_to arch_object.name, [:admin, arch_object]
    end
    column :foundation
    column :status
    column :district
    column :street
    column :num

    actions
  end
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
