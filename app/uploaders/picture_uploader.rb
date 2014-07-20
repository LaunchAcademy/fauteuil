class PictureUploader < CarrierWave::Uploader::Base

  include CarrierWave::MimeTypes

  storage :fog

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
