# == Schema Information
#
# Table name: papers
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  author      :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Paper < ActiveRecord::Base

  attr_accessible :author, :description, :title, :pdf, :author_id, :author_attributes
  validates :title, :author, :presence => true
  belongs_to :author

  has_many :user_faqs
  accepts_nested_attributes_for :user_faqs

  # has_attached_file :pdf
                   # :url  => "/assets/products/:id/:style/:basename.:extension",
                   # :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

  # validates_attachment_content_type :pdf,
  #                                   :content_type => ['application/pdf'],
  #                                   :message => "only pdf files are allowed"

end
