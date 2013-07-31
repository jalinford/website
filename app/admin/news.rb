ActiveAdmin.register News do
  
  index do                            
	column :title
	column :summary
	column :priority
	default_actions                   
  end     


  form do |f|                         
	f.inputs "Activity Details" do       
	  f.input :title
	  f.input :priority, :as => :select, :collection => 1..10
	  f.input :summary, :as => :html_editor           
	end                               
	f.actions                         
  end

  show do
	attributes_table do
	  row :title
	  row :priority
	  row :summary
	end
	active_admin_comments
  end

end
