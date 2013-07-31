ActiveAdmin.register Slideshow do

	menu :parent => "Photos"

  index do                            
    column :title
    column :priority
    column :description.slice(0, 100)
    column :featured
    default_actions                   
  end     

  form do |f|                         
	f.inputs "Activity Details" do       
	  f.input :title              
	  f.input :featured, :as => :radio        
	  f.input :priority, :as => :select, :collection => 1..10
	  f.input :description
	end                               
	f.actions                         
  end

  show do
		attributes_table do
      row :title
      row :featured
      row :priority
      row :description
    end
    active_admin_comments
  end

end
