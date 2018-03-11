ActiveAdmin.register Review do
    permit_params  :content,:name, :email, :ip, :prof_id,:like
end
