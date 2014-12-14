require 'test_helper'

class UtilisateursControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:utilisateurs)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_utilisateur
    assert_difference('Utilisateur.count') do
      post :create, :utilisateur => { }
    end

    assert_redirected_to utilisateur_path(assigns(:utilisateur))
  end

  def test_should_show_utilisateur
    get :show, :id => utilisateurs(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => utilisateurs(:one).id
    assert_response :success
  end

  def test_should_update_utilisateur
    put :update, :id => utilisateurs(:one).id, :utilisateur => { }
    assert_redirected_to utilisateur_path(assigns(:utilisateur))
  end

  def test_should_destroy_utilisateur
    assert_difference('Utilisateur.count', -1) do
      delete :destroy, :id => utilisateurs(:one).id
    end

    assert_redirected_to utilisateurs_path
  end
end
