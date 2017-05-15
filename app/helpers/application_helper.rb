module ApplicationHelper
	def user_permission_admin?
       if current_user 
         UserRole.find(current_user.role_id).role_name == "Admin"
       else
       false
       end
	end

	def normaluser_check(user, curr_user)
       if UserRole.find(current_user.role_id).role_name == "User"
			if  user.id == curr_user.id
			true
			else
			false
			end 
       else
       false
       end
	end

	def user_check(user1, curr_user)
		if UserRole.find(curr_user.role_id).role_name == "Manager" 
			if  user1.company_id == curr_user.company_id 
			  true
			else
			  false
			end			

		else
			false
		end
	end
	
end
