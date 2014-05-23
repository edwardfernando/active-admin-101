ActiveAdmin.register Book do
  permit_params :name, :price, :author_id, :genre_id

  scope :all, :default => true
  scope "Price 0", :price_zero

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

  index do
    selectable_column
    column :name
    column :author, :sortable => :author
    column :genre, :sortable => :genre
    column :price, :sortable => :price do |book|
      div :class => "price" do
        number_to_currency book.price
      end
    end
    actions
  end

end
