module ReviewsHelper

  def likeOrNot(review)
    if review!=nil and review.like==true
      return 'like'
    else
      return 'not-like'
    end
  end
end
