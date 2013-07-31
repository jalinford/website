ActiveAdmin.register Photo do

	menu :parent => "Photos"

  index do                            
    column :title
    column :date
    column :priority
    column :description.slice(0, 100)
    column("Slideshows") do |photo|
      a_array = Array.new
      photo.slideshows.each do |slideshow|
      	a_array.push(slideshow.title)
      end
      a_array.join(", ").slice(0, 100)
    end
    default_actions                   
  end     

  form do |f|                         
	f.inputs "Activity Details" do       
	  f.input :title              
	  f.input :date 
	  f.input :priority, :as => :select, :collection => 1..10       
	  f.input :photo
	  f.input :slideshows, :as => :check_boxes
	  f.input :description
	end                               
	f.actions                         
  end

  show do
		attributes_table do
      row :title
      row :date
      row :priority
      row :photo
      row :description
      panel("Slideshows") do
      	table_for photo.slideshows do |slideshow|
    			column :title
    			column :priority
    			column :description
    		end
    	end
    end
    active_admin_comments
  end

end

