# config/initializers/session_store.rb

Rails.application.config.session_store :cookie_store, key: '_task_management_session', expire_after: 1.day
# Rails.application.config.session_store :active_record_store, key: '_task_management_session' #this is for server side session management
