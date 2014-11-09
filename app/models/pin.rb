class Pin < ActiveRecord::Base
  # The order in which this is setup is very important!!!!!!!!!!!
  # if the 'validates' method goes before the attribute that it defines, I get an error!!!!!!!!!!!

  belongs_to :user
  attr_accessible :description, :image
  has_attached_file :image
  
  validates :user_id, presence: true
  validates :description, presence: true
  #validates :image, :attachment_presence => true
  
  # I get an error when I add these methods and can't open the application at all. If I inactivated these methods, the application opens but I get an error if I try to post an image. 
  # validates_attachment_file_name :image, :matches => [/png\Z/, /jpeg\Z/, /gif\Z/]
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  
  #Ignore the below methods
  #validates_attachment_content_type :image, content_type: %w(image/jpeg image/jpg image/png)
  #validates_attachment :image, content_type: { content_type: /\Aimage\/.*\Z/ }
  #content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']},
  #file_size: { less_than: 5.megabytes }
  #validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  #validates_attachment :image, :presence => true, :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"]}


end
