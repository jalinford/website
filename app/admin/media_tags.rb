ActiveAdmin.register MediaTag do
  
  menu :parent => "Media"
  
  index do                            
    column :title
    column :featured
    column :author
    default_actions                   
  end  

  form do |f|                         
	f.inputs "Media Tag Details" do       
	  f.input :title, :hint => "Name of media Category/Tag"                  
	  f.input :featured, :as => :radio
	  f.input :author, :as => :radio, :hint => "Is this tag meant for things you created?"      
	  end                               
	f.actions                         
  end

  show do
    attributes_table do
      row :title
      row :featured
      row :author
    end
    active_admin_comments
   end

end
