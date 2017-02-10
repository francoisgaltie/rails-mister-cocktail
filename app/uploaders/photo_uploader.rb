class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :standard do
    resize_to_fill 400, 300
  end

  version :card do
     resize_to_fill 175, 100
   end

end
