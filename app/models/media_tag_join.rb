class MediaTagJoin < ActiveRecord::Base
  attr_accessible :media_id, :media_tag_id
  belongs_to :media
  belongs_to :media_tag
end
