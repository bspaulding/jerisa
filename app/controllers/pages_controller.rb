class PagesController < ApplicationController
  def rsvp
    unless Property.check('allow-rsvp', "true")
      redirect_to :root
    end
  end

  def coming_soon; render :layout => false; end
  def our_story; end
  def registry; end
  def contact_us; end
  def guestbook; end
  def ceremony; end
  def reception; end
  def accomodations; end
end
