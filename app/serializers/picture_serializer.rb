class PictureSerializer < ActiveModel::Serializer
  attributes :id, :caption, :date_taken, :img_tag
  def img_tag
    "<img src='https://s3.amazonaws.com/bostonsbuildingsbucket/original/#{object.id}/#{object.image_file_name}'/>"
  end
end
