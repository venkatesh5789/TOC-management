require 'spec_helper'

describe StudentsController do

  describe "GET index" do
    it "assigns all students as @students" do
      student = Student.create
      get :index
      assigns(:students).should eq([student])
    end
  end

  describe "GET show" do
    it "assigns the requested student as @student" do
      student = Student.create
      get :show, {:id => student.to_param}
      assigns(:student).should eq(student)
    end
  end

  describe "GET new" do
    it "assigns a new student as @student" do
      get :new, {}
      assigns(:student).should be_a_new(Student)
    end
  end

  describe "GET edit" do
    it "assigns the requested student as @student" do
      student = Student.create
      get :edit, {:id => student.to_param}
      assigns(:student).should eq(student)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Student" do
        expect {
          post :create
        }.to change(Student, :count).by(1)
      end

      it "assigns a newly created student as @student" do
        post :create
        assigns(:student).should be_a(Student)
        assigns(:student).should be_persisted
      end

    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved student as @student" do
        # Trigger the behavior that occurs when invalid params are submitted
        Student.any_instance.stub(:save).and_return(false)
        post :create, {:student => {}}
        assigns(:student).should be_a_new(Student)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Student.any_instance.stub(:save).and_return(false)
        post :create, {:student => {}}
        response.should render_template("new")
      end
    end
  end

end
