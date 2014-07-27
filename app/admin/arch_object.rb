ActiveAdmin.register ArchObject do
  permit_params :name, :avatar, :foundation, :status, :user_id, :district, :street, :num, :avatar_file_name

  filter :architects
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

  form do |f|
    f.inputs "Основое" do
      f.input :name
      f.input :status, as: :select, collection: ArchObject::STATUS_TYPES
      f.input :foundation, as: :datepicker
    end
    f.inputs "Адрес" do
      f.input :district, as: :select, collection: ArchObject::DISTRICTS
      f.input :street
      f.input :num
    end
    f.inputs "Аватар" do
      f.input :avatar
    end
    f.actions
  end
  controller do
    def create
      super
      @arch_object.user = current_user
      @arch_object.save
    end
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
