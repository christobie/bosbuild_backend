class Picture < ActiveRecord::Base
  has_attached_file :image,
              :styles => { :large => "510x510#", :medium => "250x250#", :thumbnail => "100x200#" },
              :processors => [:thumbnail],
              storage: :s3,
              path: "/:style/:id/:filename",
              s3_credentials: {
                bucket: ENV['S3_BUCKET'],
                :access_key_id => ENV['ACCESS_KEY'],
                :secret_access_key => ENV['SECRET_KEY']}

  validates :image, presence: true
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates_with AttachmentSizeValidator, :attributes => :image, :less_than => 100.megabytes
end
