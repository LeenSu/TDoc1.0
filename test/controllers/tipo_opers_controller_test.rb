require 'test_helper'

class TipoOpersControllerTest < ActionController::TestCase
  setup do
    @tipo_oper = tipo_opers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_opers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_oper" do
    assert_difference('TipoOper.count') do
      post :create, tipo_oper: { nombre: @tipo_oper.nombre }
    end

    assert_redirected_to tipo_oper_path(assigns(:tipo_oper))
  end

  test "should show tipo_oper" do
    get :show, id: @tipo_oper
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_oper
    assert_response :success
  end

  test "should update tipo_oper" do
    patch :update, id: @tipo_oper, tipo_oper: { nombre: @tipo_oper.nombre }
    assert_redirected_to tipo_oper_path(assigns(:tipo_oper))
  end

  test "should destroy tipo_oper" do
    assert_difference('TipoOper.count', -1) do
      delete :destroy, id: @tipo_oper
    end

    assert_redirected_to tipo_opers_path
  end
end
