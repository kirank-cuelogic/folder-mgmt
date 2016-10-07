class Folder < ActiveRecord::Base

  validates :name, :folder_type, presence: true

  has_many :documents

  # validate :has_documents

  # def has_documents
  #   errors.add(:base, 'must add at least one document') if self.documents.blank?
  # end

end