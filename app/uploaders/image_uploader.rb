class ImageUploader < CarrierWave::Uploader::Base

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end


  # For images you might use something like this:
  def extension_whitelist
    %w(jpg jpeg gif png)
  end

end
