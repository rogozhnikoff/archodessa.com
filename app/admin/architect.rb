ActiveAdmin.register Architect do
  permit_params :name, :surname, :familyname, :avatar, :user_id

  filter :name
  filter :surname
  filter :arch_objects
  filter :user, label: 'Автор', collection: User.all.map(&:email)

  index do
    selectable_column
    column :surname, sortable: :surname do |architect|
      link_to architect.surname, architect
    end
    column :name
    actions
  end

  controller do
    def create
      super
      @architect.user = current_user
      @architect.save
    end
  end
  form do |f|
    f.inputs "Даные" do
      f.input :surname
      f.input :name
      f.input :familyname
    end
    f.inputs "Аватар" do
      f.input :avatar
    end
    f.actions
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
