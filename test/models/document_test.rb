require 'test_helper'

class DocumentTest < ActiveSupport::TestCase
  test 'must_be_valid' do 
    folder = build(:folder)
    assert folder.documents << build(:document)
  end

  test 'must_be_invalid' do 
    document = Document.new(document_name:'Doc 2')
    assert_not document.save
  end
end