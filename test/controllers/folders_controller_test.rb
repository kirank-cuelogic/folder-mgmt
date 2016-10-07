class FoldersControllerTest < ActionController::TestCase
  setup do
    @folder = build(:folder)   
    @folder.save
  end

  test "should run index" do 
    get :index, headers: { "Content-Type" => "application/json" }
    assert_response  200 
    assert_includes JSON.parse(@response.body)[0].values,@folder.name
  end

  test 'should return create' do
    assert_difference('Folder.count',1) do
      post :create, folder: @folder.attributes 
    end
  end

  test 'should destroy the folder' do 
    assert_difference('Folder.count', -1) do 
      delete :destroy, id: @folder.id
    end
  end
end