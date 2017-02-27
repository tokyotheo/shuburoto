require 'test_helper'

class ReportTasksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:report_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create report_task" do
    assert_difference('ReportTask.count') do
      post :create, :report_task => { }
    end

    assert_redirected_to report_task_path(assigns(:report_task))
  end

  test "should show report_task" do
    get :show, :id => report_tasks(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => report_tasks(:one).id
    assert_response :success
  end

  test "should update report_task" do
    put :update, :id => report_tasks(:one).id, :report_task => { }
    assert_redirected_to report_task_path(assigns(:report_task))
  end

  test "should destroy report_task" do
    assert_difference('ReportTask.count', -1) do
      delete :destroy, :id => report_tasks(:one).id
    end

    assert_redirected_to report_tasks_path
  end
end
