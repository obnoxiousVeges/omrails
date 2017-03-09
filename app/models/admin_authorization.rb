class AdminAuthorization < ActiveAdmin::AUthorizationAdapter 
def authorized?(action,subject = nil) 
	user && user.admin?
end
end