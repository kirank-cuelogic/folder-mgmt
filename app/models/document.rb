class Document < ActiveRecord::Base

  belongs_to :folder
  validates :document_name,:folder_id , presence: true
end