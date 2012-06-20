class PagesController < ApplicationController
  def rsvp
    unless Property.check('allow-rsvp', "true")
      redirect_to :root
    end
  end

  def coming_soon; render :layout => false; end
  def our_story; end
  def photos; end
  def registry; end
  def contact_us; end
  def guestbook; end
  def locations; end
  def accomodations; end
end
