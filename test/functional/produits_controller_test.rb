require 'test_helper'

class ProduitsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:produits)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_produit
    assert_difference('Produit.count') do
      post :create, :produit => { }
    end

    assert_redirected_to produit_path(assigns(:produit))
  end

  def test_should_show_produit
    get :show, :id => produits(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => produits(:one).id
    assert_response :success
  end

  def test_should_update_produit
    put :update, :id => produits(:one).id, :produit => { }
    assert_redirected_to produit_path(assigns(:produit))
  end

  def test_should_destroy_produit
    assert_difference('Produit.count', -1) do
      delete :destroy, :id => produits(:one).id
    end

    assert_redirected_to produits_path
  end
end
