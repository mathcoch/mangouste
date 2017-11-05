class FileUploader < CarrierWave::Uploader::Base
  storage :fog

  def store_dir
    Rails.env.production? ? "uploads/production" : "uploads/development"
  end
end
