ActiveAdmin.register Answer do
  form do |f|
    f.inputs "Answer Details" do
      f.input :question
      f.input :user, :member_label => :email
      f.input :body
    end
    
    f.buttons
  end
end
