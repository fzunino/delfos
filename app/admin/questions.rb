ActiveAdmin.register Question do
  form do |f|
    f.inputs "Question Details" do
      f.input :user, :member_label => :email
      f.input :title
      f.input :body
      f.input :tags, :as => :check_boxes, :member_label => :name, :label => "Tags"
    end
    
    f.buttons
  end
end
