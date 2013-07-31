ActiveAdmin.register Project do

  index do                            
	column :title
	column :featured
	column :summary
	column :priority
	default_actions                   
  end     


  form do |f|                         
	f.inputs "Activity Details" do       
	  f.input :title
	  f.input :featured, :as => :radio 
	  f.input :priority, :as => :select, :collection => 1..10
	  f.input :summary, :hint => "Summary only displayed on index pages"  
	  f.input :description, :as => :html_editor           
	end                               
	f.actions                         
  end

  show do
	attributes_table do
	  row :title
	  row :featured
	  row :priority
	  row :summary
	  row :description
	end
	active_admin_comments
  end
  
end
