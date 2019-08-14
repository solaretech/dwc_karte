Rails.application.routes.draw do

  devise_for :staffs, controllers: {
    sessions: 'staffs/sessions',
    registrations: 'staffs/registrations'
  }
  devise_for :mentors, controllers: {
    sessions: 'mentors/sessions',
    registrations: 'mentors/registrations'
  }
  devise_for :students, controllers: {
    sessions: 'students/sessions',
    registrations: 'students/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :students, as:"", path:"" do
    resources :questions, only:[:new, :index, :show, :update]
    get 'students/edit' => "students#edit" ,as: 'edit_student'
    root "students#top"
  end

  namespace :mentors do
    resources :questions, only:[:index, :show, :update]
    get 'questions/:id/new_answer' => "questions#answer", as:"new_answer"
    resources :trainings, only:[:new, :create, :index, :edit, :update]
  end

  namespace :staffs do
    # 受講生情報のCRUD
    resources :students, only:[:new, :create, :index, :show, :edit, :update]
    resources :questions, only:[:index, :show]
    patch 'students/:id/cancel' => 'students#cancel',as:'student_cancel' # 解約

    # メンター情報のCRUD
    resources :mentors, only:[:show, :destroy, :upgrade]
    patch 'mentors/:id/grade_update' => 'mentors#grade_update'
    patch 'mentors/retire' => 'mentors#retire'

    # カウンセリング・面談に関するCRUD
    resources :student_counsels, only:[:new, :create, :index, :show, :edit, :update]
    resources :mentor_counsels, only:[:new, :create, :index, :show, :edit, :update]
  end

  namespace :admin do
    # 社員登録・編集・退職
    resources :staffs, only:[:new, :edit, :create, :update]
    patch 'staffs/retire' => 'staffs#retire'
    
    # 各種設定

    ## 分野
    get 'configs/categories/new' => 'configs#new_category'
    get 'configs/categories/:id/edit' => 'configs#edit_category'
    post 'configs/categories' => 'configs#create_category'
    patch 'configs/categories/:id' => 'configs#update_category'
    ## コース
    get 'configs/cources/new' => 'configs#new_course'
    get 'configs/cources/:id/edit' => 'configs#edit_course'
    post 'configs/courses' => 'configs#create_course'
    patch 'configs/courses/:id' => 'configs#update_course'
    ## 校舎
    get 'configs/schools/new' => 'configs#new_schoo;'
    get 'configs/schools/:id/edit' => 'configs#edit_school'
    post 'configs/schools' => 'configs#create_school'
    patch 'configs/schools/:id' => 'configs#update_school'
  end

end
