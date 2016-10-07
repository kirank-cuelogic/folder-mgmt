FactoryGirl.define do
  sequence :document_name do |n|
    "Document #{n}"
  end

  factory :folder do 
    name "Folder 1"
    folder_type "User Folder"
    description "This is a simple folder to put user documents"
  end

  factory :document do 
    document_name { generate(:document_name) } 
    folder_id nil
  end
end