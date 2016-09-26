class Student < ActiveRecord::Base
    mount_uploader :avatar, AvatarUploader # mount :avatar with AvatarUploader class
    validates :first_name, :last_name, presence: { message: "must be given please" }
end
