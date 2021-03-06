# encoding: utf-8

class PictureUploader < CarrierWave::Uploader::Base

  # Include MiniMagick support:
  include CarrierWave::MiniMagick
  process resize_to_limit: [400, 400]

  # Tipo de almacenamiento
  if Rails.env.production?
    storage :fog
  else
    storage :file
  end

  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end
