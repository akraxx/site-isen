require 'test_helper'

class MedecinsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:medecins)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_medecin
    assert_difference('Medecin.count') do
      post :create, :medecin => { }
    end

    assert_redirected_to medecin_path(assigns(:medecin))
  end

  def test_should_show_medecin
    get :show, :id => medecins(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => medecins(:one).id
    assert_response :success
  end

  def test_should_update_medecin
    put :update, :id => medecins(:one).id, :medecin => { }
    assert_redirected_to medecin_path(assigns(:medecin))
  end

  def test_should_destroy_medecin
    assert_difference('Medecin.count', -1) do
      delete :destroy, :id => medecins(:one).id
    end

    assert_redirected_to medecins_path
  end
end
