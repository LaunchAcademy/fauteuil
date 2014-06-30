class PictureUploader < CarrierWave::Uploader::Base
  include CarrierWave::MimeTypes

  if Rails.env.production? || Rails.env.development?
    storage :fog
  else
    storage :file
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
