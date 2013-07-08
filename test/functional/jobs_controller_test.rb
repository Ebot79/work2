require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post :create, job: { bill_date: @job.bill_date, description_of_work: @job.description_of_work, job_name: @job.job_name, job_type: @job.job_type, labor: @job.labor, materials: @job.materials, paid_date: @job.paid_date, priority: @job.priority, work_order_dates: @job.work_order_dates }
    end

    assert_redirected_to job_path(assigns(:job))
  end

  test "should show job" do
    get :show, id: @job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job
    assert_response :success
  end

  test "should update job" do
    put :update, id: @job, job: { bill_date: @job.bill_date, description_of_work: @job.description_of_work, job_name: @job.job_name, job_type: @job.job_type, labor: @job.labor, materials: @job.materials, paid_date: @job.paid_date, priority: @job.priority, work_order_dates: @job.work_order_dates }
    assert_redirected_to job_path(assigns(:job))
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete :destroy, id: @job
    end

    assert_redirected_to jobs_path
  end
end