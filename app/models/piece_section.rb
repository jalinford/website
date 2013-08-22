class PieceSection < ActiveRecord::Base
  attr_accessible :audio_mp3, :audio_ogg, :audio_wav, :description, :piece_id, :priority, :title, :youtube
  mount_uploader :audio_mp3, AudioUploader
  mount_uploader :audio_wav, AudioUploader
  mount_uploader :audio_ogg, AudioUploader
  belongs_to :piece
  accepts_nested_attributes_for :piece, :allow_destroy => true
  scope :ordered, order("priority DESC")
end
