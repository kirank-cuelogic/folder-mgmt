require 'test_helper'

class FolderTest < ActiveSupport::TestCase
  test 'should not save folder without name' do
    folder = Folder.new
    assert_not folder.save
  end

  test 'should not save folder without folder_type' do
    folder = Folder.new(name:'User Folder')
    assert_not folder.save
  end

  test 'documents should not nil' do 
    folder  = build(:folder)
    folder.documents << build_list(:document,2)
    assert_not_nil folder.documents
  end
end