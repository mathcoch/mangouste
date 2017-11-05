class Photo < ApplicationRecord
    mount_uploader :file, FileUploader
end
