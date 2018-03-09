module ApplicationHelper
    def full_title(page_title = '')
        base_title = "ISSAT Reviews"
        if page_title.empty?
          base_title
        else
          page_title + " | " + base_title
        end
    end
# Returns the remote request ip address if not used
    def alreadyReviewed
      ip = request.remote_ip
      ret = {}
      ret[:ip] = ip
      prof_id = params[:review][:prof_id] if params[:review]!=nil
      prof_id = params[:prof_id]["0"] if prof_id==nil and params[:prof_id]!=nil
      prof_id = params[:id] if  params[:id]!= nil and prof_id==nil
      if Review.where(:prof_id=>prof_id).where(:ip=>ip).any?
        # Ip exists
        ret[:exist] = true
      else
        # Ip does not exist in db with this prof_id
        ret[:exist] = false
      end
      return ret
    end

end
