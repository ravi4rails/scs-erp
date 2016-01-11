require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post :create, student: { cast: @student.cast, category: @student.category, contact_1: @student.contact_1, contact_2: @student.contact_2, father_name: @student.father_name, first_name: @student.first_name, last_name: @student.last_name, middle_name: @student.middle_name, mother_name: @student.mother_name, relegion: @student.relegion }
    end

    assert_redirected_to student_path(assigns(:student))
  end

  test "should show student" do
    get :show, id: @student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student
    assert_response :success
  end

  test "should update student" do
    patch :update, id: @student, student: { cast: @student.cast, category: @student.category, contact_1: @student.contact_1, contact_2: @student.contact_2, father_name: @student.father_name, first_name: @student.first_name, last_name: @student.last_name, middle_name: @student.middle_name, mother_name: @student.mother_name, relegion: @student.relegion }
    assert_redirected_to student_path(assigns(:student))
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete :destroy, id: @student
    end

    assert_redirected_to students_path
  end
end
