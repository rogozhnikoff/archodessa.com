ActiveAdmin.register Article do
  permit_params :publish, :body, :title, :status, :avatar, :arch_object_id, :user_id
  scope :all, :default => true
  scope :moderate
  scope :active

  filter :arch_object
  filter :user, :collection => User.all.map(&:email)
  filter :title
  filter :publish


  index do
    selectable_column
    column :title, :sortable => :title do |article|
      link_to article.title, [:admin, article]
    end
    column :status
    column :created_at
    column :updated_at

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
