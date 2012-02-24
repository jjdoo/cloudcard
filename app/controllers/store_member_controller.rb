class StoreMemberController < ApplicationController

  #map.connect 'store/:store_id/member', :conditions =>{ :method => :get}, :controller => 'store_member', :action=>"get"
  def get
    member = Card.find_all_by_store_id(:store_id)
    render :json => member
  end

  def delete
    member = Card.find_by_user_id_and_store_id(:user_id,:store_id)
    member.delete
    render :json =>{:status => "success"}
  end
  def pending_list
     member = Card.find_all_by_store_id_and_authorized(:store_id,"0")
    render :json => member
  end
def pending_dispose
   member = Card.find_by_user_id_and_store_id(:user_id,:store_id)
   member.authorized = :type
   member.save
    render :json =>member
end
end
