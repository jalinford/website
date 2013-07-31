ActiveAdmin.register Media do

	menu :parent => "Media"

  index do                            
	column :title
	column :website
	column :featured
	column :summary
	column :priority
	column("Tags") do |media|
      a_array = Array.new
      media.media_tags do |meadia_tag|
      	a_array.push(meadia_tag.title)
      end
      a_array.join(", ").slice(0, 100)
    end
	default_actions                   
  end     


  form do |f|                         
	f.inputs "Media Details" do       
	  f.input :title
	  f.input :featured, :as => :radio 
	  f.input :priority, :as => :select, :collection => 1..10
	  f.input :website
	  f.input :media_tags, :as => :check_boxes
	  f.input :summary, :as => :html_editor           
	end                               
	f.actions                         
  end

  show do
	attributes_table do
	  row :title
	  row :featured
	  row :priority
	  row :website
	  row :summary
	  panel("Tags") do
      	table_for media.media_tags do |meadia_tag|
    			column :title
    			column :featured
    			column :author
    		end
    	end
	end
	active_admin_comments
  end
  
end
