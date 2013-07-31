ActiveAdmin.register Piece do

  menu :parent => "Music"

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

		f.has_many :piece_sections do |a|
			a.input :title
			a.input :audio_mp3, :hint => "Suggested: do mp3 and one other file type to insure browser compatibility"  
			a.input :audio_wav
			a.input :audio_ogg
			a.input :youtube, :hint => "use youtube embed full html"  
			a.input :priority, :as => :select, :collection => 1..10
			a.input :description
			a.input :_destroy, :as=>:boolean, :required => false, :label=>'Check this box to remove the above section when Piece updated'
		end


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
      panel("Sectionss") do
      	table_for piece.piece_sections do |piece_section|
    		column :title
    		column :priority
    		column :description
    		column("Audio") do |piece_section|
    			a_array = Array.new
    			a_array.push(piece_section.audio_mp3)
    			a_array.push(piece_section.audio_wav)
    			a_array.push(piece_section.audio_ogg)
				a_array.join(", ")
    		end
   			column :youtube
    	end
      end
	end
	active_admin_comments
  end

end