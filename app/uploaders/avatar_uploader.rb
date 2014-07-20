class AvatarUploader < CarrierWave::Uploader::Base

  include CarrierWave::MimeTypes

  storage :fog

end
