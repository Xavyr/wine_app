require "sinatra"
require "sinatra/reloader" if development?
require "sinatra/content_for"
require "tilt/erubis"

#this sets up sinatra to use sessions
# configure do 
#   enable :sessions
# end

get "/" do
  erb :home, layout: :layout
end

get "/wine" do 
  @fire = "/wine"
  @question = "Whose going to drink it?"
  @possible_answers = ["Personal Use", "Someone Else"]
  erb :question, layout: :layout
end

post "/wine/personaluse" do 
  @fire = request.fullpath

  @question = "Are You At Home?"
  @possible_answers = ["Yes", "No"]
  erb :question, layout: :layout
end

post "/wine/personaluse/yes" do 
  @fire = request.fullpath

  @question = "Alone?"
  @possible_answers = ["Yes", "No"]
  erb :question, layout: :layout
end

post "/wine/personaluse/yes/yes" do 
  @fire = request.fullpath

  @question = "Recovering from work?"
  @possible_answers = ["Yes", "No"]
  erb :question, layout: :layout
end

post "/wine/personaluse/yes/no" do 
  @fire = request.fullpath

  @question = "Then we are at dinner?"
  @possible_answers = ["Yes", "No"]
  erb :question, layout: :layout
end

post "/wine/personaluse/yes/no/yes" do 
  @fire = request.fullpath
  @question = "NORTH COAST CABERNET FRANC"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/personaluse/yes/no/no" do 
  @fire = request.fullpath
  @question = "SYRAH"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/personaluse/yes/yes/yes" do 
  @fire = request.fullpath
  @question = "SNIFF YOUR GLASS OF PINOT NOIR or NEBBIOLO"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/personaluse/yes/yes/no" do 
  @fire = request.fullpath
  @question = "Getting drunk?"
  @possible_answers = ["Yes", "No"]

  erb :question, layout: :layout
end

post "/wine/personaluse/yes/yes/no/yes" do 
  @fire = request.fullpath
  @question = "GOT FOR HIGH OCTANE; ZINFANDEL or SHIRAZ"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/personaluse/yes/yes/no/no" do 
  @fire = request.fullpath
  @question = "Feeling Fancy?"
  @possible_answers = ["Yes", "No"]

  erb :question, layout: :layout
end

post "/wine/personaluse/yes/yes/no/no/yes" do 
  @fire = request.fullpath
  @question = "GO FOR SOMETHING EXOCTIC; SANGIOVESE or GRENACHE"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/personaluse/yes/yes/no/no/no" do 
  @fire = request.fullpath
  @question = "Daily Drinking Wine?"
  @possible_answers = ["Yes", "No"]

  erb :question, layout: :layout
end

post "/wine/personaluse/yes/yes/no/no/no/yes" do 
  redirect "/wine/personaluse/partyinmymouth"
end

get "/wine/personaluse/partyinmymouth" do
  @fire = request.fullpath
  @question = "Party In Your Mouth?"
  @possible_answers = ["Yes", "No", "I am Cooking With It"]

  erb :question, layout: :layout
end

post "/wine/personaluse/partyinmymouth/yes" do 
  @fire = request.fullpath
  @question = "ARGENTINIAN MALBEC"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/personaluse/partyinmymouth/no" do 
  @fire = request.fullpath
  @question = "Dirt you eat dirt as a child?"
  @possible_answers = ["Yum", "No"]

  erb :question, layout: :layout
end

post "/wine/personaluse/partyinmymouth/no/yum" do 
  @fire = request.fullpath
  @question = "SOMETHING EARTHY; CHINON or BOURGUIL"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/personaluse/partyinmymouth/no/no" do 
  @fire = request.fullpath
  @question = "Butter on  your popcorn?"
  @possible_answers = ["Yep", "No"]

  erb :question, layout: :layout
end

post "/wine/personaluse/partyinmymouth/no/no/yep" do 
  @fire = request.fullpath
  @question = "PLEASE BRING ME MY: BUTTERY CHARDONNAY"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/personaluse/partyinmymouth/no/no/no" do 
  redirect "/wine/personaluse/worlds"
end



post "/wine/personaluse/yes/yes/no/no/no/no" do 
  redirect "/wine/personaluse/worlds"
end

# post "/wine/personaluse/yes/yes/no/no/no/no/oldworld" do 
#   @fire = request.fullpath
#   @question = "WHY BUY ANYTHING BUT: BORDEAUX or  BURGUNDY"
#   @reset = true

#   erb :question, layout: :layout
# end



post "/wine/personaluse/no" do 
  @fire = request.fullpath

  @question = "On The Go?"
  @possible_answers = ["Dinner", "Restuarant", "Camping", "Special Occasions", "Drinking In Public"]
  erb :question, layout: :layout
end

post "/wine/someoneelse" do
  @fire = request.fullpath

  @question = "Are You At A Social Gathering?"
  @possible_answers = ["Yes", "No"]
  erb :question, layout: :layout 
end

post "/wine/someoneelse/yes" do 
  @fire = request.fullpath
  @question = "Pick One"
  @possible_answers = ["Dinner Party", "Beach Bbq", "Art Opening", "Bachelorette Party", "Get Together"]

  erb :question, layout: :layout
end

post "/wine/someoneelse/no" do 
  @fire = request.fullpath
  @question = "Gift...Are They a Wine Lover?"
  @possible_answers = ["Yes", "No"]

  erb :question, layout: :layout
end

post "/wine/someoneelse/no/no" do 
  @fire = request.fullpath
  @question = "THEY DON'T DESERVE WINE; KEEP IT FOR YOURSELF"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/someoneelse/no/yes" do
  @fire = request.fullpath
  @question = "Do you really know them?"
  @possible_answers = ["No", "Yes"]

  erb :question, layout: :layout
end

post "/wine/someoneelse/no/yes/yes" do
  @fire = request.fullpath
  @question = "Are they your favorite people in the world?"
  @possible_answers = ["Yes", "No"]

  erb :question, layout: :layout
end

post "/wine/someoneelse/no/yes/no" do
  @fire = request.fullpath
  @question = "THEY DON'T DESERVE WINE; KEEP IT FOR YOURSELF"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/someoneelse/no/yes/yes/yes" do
  @fire = request.fullpath
  @question = "HEDONISTIC JOY RIDE: CALIFORNIA PINOT NOIR"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/someoneelse/no/yes/yes/no" do
  @fire = request.fullpath
  @question = "THEY DON'T DESRVE WINE; KEEP IT FOR YOURSELF"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/someoneelse/yes/dinnerparty" do
  @fire = request.fullpath
  @question = "Who is Cooking?"
  @possible_answers = ["Me", "Them"]

  erb :question, layout: :layout
end

post "/wine/someoneelse/yes/dinnerparty/me" do
  @fire = request.fullpath
  @question = "THEY DON'T DESERVE WINE; KEEP IT FOR YOURSELF!"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/someoneelse/yes/dinnerparty/them" do
  @fire = request.fullpath
  @question = "BUY THE BIGGEST BOTTLE WITH THE WORDS 'RED BLEND'"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/someoneelse/yes/beachbbq" do
  @fire = request.fullpath
  @question = "BROUGHT A NICE BOTTLE BUT GOT IT CONFISCATED; NO GLASS ON THE BEACH!!!"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/someoneelse/yes/artopening" do
  @fire = request.fullpath
  @question = "UNFORTUNATELY THEY RARELY HAVE GOOD TASTE...TWO BUCK CHUCK!!!"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/someoneelse/yes/gettogether" do
  @fire = request.fullpath
  @question = "Do you know them?"
  @possible_answers = ["Yes", "No"]

  erb :question, layout: :layout
end

post "/wine/someoneelse/yes/bacheloretteparty" do
  @fire = request.fullpath
  @question = "LEAVE YOUR WINE AT HOME! BRING VODKA AND WHISKEY!"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/someoneelse/yes/gettogether/yes" do
  @fire = request.fullpath
  @question = "Are they wine lovers?"
  @possible_answers = ["Yes", "No"]

  erb :question, layout: :layout
end

post "/wine/someoneelse/yes/gettogether/no" do
  @fire = request.fullpath
  @question = "BRING A CHEAP BOTTLE AND HOPE NO ONE OPENS IT"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/someoneelse/yes/gettogether/yes/no" do
  @fire = request.fullpath
  @question = "THEY DON'T DESERVE WINE; KEEP IT FOR YOURSELF"
  @reset = true;

  erb :question, layout: :layout
end

post "/wine/someoneelse/yes/gettogether/yes/yes" do
  @fire = request.fullpath
  @question = "Are they your favorite people in the world?"
  @possible_answers = ["No", "Yes"]

  erb :question, layout: :layout
end

post "/wine/someoneelse/yes/gettogether/yes/yes/yes" do
  @fire = request.fullpath
  @question = "Really!?"
  @possible_answers = ["Honest", "Nope"]

  erb :question, layout: :layout
end

post "/wine/someoneelse/yes/gettogether/yes/yes/no" do
  @fire = request.fullpath
  @question = "THEY DON'T DESERVE WINE; KEEP IT FOR YOURSELF"
  @reset = true;

  erb :question, layout: :layout
end

post "/wine/someoneelse/yes/gettogether/yes/yes/yes/honest" do
  @fire = request.fullpath
  @question = "HEDONISTIC JOY RIDE; CALIFORNIA PINOT NOIR"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/someoneelse/yes/gettogether/yes/yes/yes/nope" do
  @fire = request.fullpath
  @question = "THEY DON'T DESERVE WINE; KEEP IT FOR YOURSELF"
  @reset = true;

  erb :question, layout: :layout
end

post "/wine/personaluse/partyinmymouth/iamcookingwithit" do
  @fire = request.fullpath
  @question = "WHITE AND <$9 SUCH AS: SOUVIGNON BLANC"
  @reset = true

  erb :question, layout: :layout
end

# post "/wine/personaluse/partinmymouth/no/no/no/newworld" do
#   @fire = request.fullpath
#   @question = "Are you into cults??"
#   @possible_answers = ["Yes", "No"]

#   erb :question, layout: :layout
# end

# post "/wine/personaluse/partinmymouth/no/no/no/newworld/yes" do
#   @fire = request.fullpath
#   @question = "CULT CLASSICS; SINE QUE NON or CAYUSE"
#   @reset = true

#   erb :question, layout: :layout
# end

post "/wine/personaluse/partinmymouth/no/no/no/newworld/no" do
  @fire = request.fullpath
  @question = "DRINK A BOTTLE OF SUN; CALIFORNIA CABERNET"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/personaluse/no/dinner" do 
  @fire = request.fullpath
  @question = "Is Wine the main course?"
  @possible_answers = ["Yes", "No"]

  erb :question, layout: :layout
end

post "/wine/personaluse/no/dinner/yes" do 
  @fire = request.fullpath
  @question = "GO FOR SOMETHING EXOCTIC; SANGIOVESE or GRENACHE"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/personaluse/no/dinner/no" do 
  @fire = request.fullpath
  @question = "Are you cooking with it?"
  @possible_answers = ["Yes", "No"]

  erb :question, layout: :layout
end

post "/wine/personaluse/no/dinner/no/yes" do 
  @fire = request.fullpath
  @question = "WHITE AND <$9 SUCH AS: SOUVIGNON BLANC"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/personaluse/no/dinner/no/no" do 
  redirect "/wine/personaluse/partyinmymouth"
end

post "/wine/personaluse/no/dinner/yes" do 
  @fire = request.fullpath
  @question = "GO BUDGET, GO BULK; 3 LITER BOX WINE"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/personaluse/no/restuarant" do 
  @fire = request.fullpath

  @question = "Fancy?"
  @possible_answers = ["No", "Maybe"]
  erb :question, layout: :layout
end

post "/wine/personaluse/no/restuarant/no" do 
  @fire = request.fullpath

  @question = "Ordering from a window?"
  @possible_answers = ["Yes", "No"]
  erb :question, layout: :layout
end

post "/wine/personaluse/no/restuarant/no/yes" do 
  @fire = request.fullpath
  @question = "GO BUDGET, GO BULK; 3 LITER BOX WINE"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/personaluse/no/restuarant/no/no" do 
  @fire = request.fullpath
  @question = "Cooking with your wine?"
  @possible_answers = ["Yes", "No"]

  erb :question, layout: :layout
end

post "/wine/personaluse/no/restuarant/no/no/no" do 
  redirect "/wine/personaluse/partyinmymouth"
end

post "/wine/personaluse/no/restuarant/no/no/yes" do 
  @fire = request.fullpath
  @question = "WHITE AND <$9 SUCH AS: SOUVIGNON BLANC"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/personaluse/no/restuarant/maybe" do 
  @fire = request.fullpath

  @question = "Can you pronounce the menu?"
  @possible_answers = ["Yes", "No"]
  erb :question, layout: :layout
end

post "/wine/personaluse/no/restuarant/maybe/no" do 
  @fire = request.fullpath

  @question = "ASK FOR: COATS DO ROAN"
  @reset = true
  erb :question, layout: :layout
end

post "/wine/personaluse/no/restuarant/maybe/yes" do 
  redirect "/wine/personaluse/worlds"
end

get "/wine/personaluse/worlds" do
  @fire = request.fullpath
  @question = "Welcome to age old questions..."
  @possible_answers = ["New World", "Old World"]

  erb :question, layout: :layout
end



post "/wine/personaluse/worlds/oldworld" do 
  @fire = request.fullpath
  @question = "WHY BUY ANYTHING BUT: BORDEAUX or  BURGUNDY"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/personaluse/worlds/newworld" do 
  @fire = request.fullpath
  @question = "Are you into cults??"
  @possible_answers = ["Yes", "No"]

  erb :question, layout: :layout
end

post "/wine/personaluse/worlds/newworld/yes" do
  @fire = request.fullpath
  @question = "CULT CLASSICS; SINE QUE NON or CAYUSE"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/personaluse/worlds/newworld/no" do
  @fire = request.fullpath
  @question = "DRINK A BOTTLE OF SUN: CALIFORNIA CABERNET"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/personaluse/no/camping" do
  @fire = request.fullpath
  @question = "NO CORK OR SCREW REQUIRED: SINGLE SERVE BOX WINE"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/personaluse/no/drinkinginpublic" do
  @fire = request.fullpath
  @question = "NO CORK OR SCREW REQUIRED: SINGLE SERVE BOX WINE"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/personaluse/no/specialoccasions" do
  @fire = request.fullpath
  @question = "Which is it?"
  @possible_answers = ["Anniversary", "Eloping", "Birthday", "Blind Date", "New Years"]

  erb :question, layout: :layout
end

post "/wine/personaluse/no/specialoccasions/anniversary" do
  @fire = request.fullpath
  @question = "Is it the...?"
  @possible_answers = ["First", "Second or more"]

  erb :question, layout: :layout
end

post "/wine/personaluse/no/specialoccasions/eloping" do
  @fire = request.fullpath
  @question = "SOMETHING SWEET: REISLING or CHENIN BLANC"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/personaluse/no/specialoccasions/anniversary/first" do
  @fire = request.fullpath
  @question = "HEDONISTIC JOY RIDE: CALIFORNIA PINOT NOIR"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/personaluse/no/specialoccasions/anniversary/secondormore" do
  @fire = request.fullpath
  @question = "SOMETHING COMFORTING: MERLOT"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/personaluse/no/specialoccasions/blinddate" do
  @fire = request.fullpath
  @question = "SOMETHING SWEET: REISLING or CHENIN BLANC"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/personaluse/no/specialoccasions/birthday" do
  @fire = request.fullpath
  @question = "Is the birthday boy or girl..."
  @possible_answers = ["Old", "Still Young"]

  erb :question, layout: :layout
end

post "/wine/personaluse/no/specialoccasions/birthday/old" do
  @fire = request.fullpath
  @question = "HEDONISTIC JOY RIDE: CALIFORNIA PINOT NOIR"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/personaluse/no/specialoccasions/birthday/stillyoung" do
  @fire = request.fullpath
  @question = "SOMETHING SWEET: REISLING or CHENIN BLANC"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/personaluse/no/specialoccasions/newyears" do
  @fire = request.fullpath
  @question = "Are You..."
  @possible_answers = ["Alone", "Super popular with a bunch of friends"]

  erb :question, layout: :layout
end

post "/wine/personaluse/no/specialoccasions/newyears/alone" do
  @fire = request.fullpath
  @question = "GO FOR SOMETHING EXOCTIC; SANGIOVESE or GRENACHE"
  @reset = true

  erb :question, layout: :layout
end

post "/wine/personaluse/no/specialoccasions/newyears/superpopularwithabunchoffriends" do
  @fire = request.fullpath
  @question = "CHEAP BUBBLY: SPANISH CAVA"
  @reset = true

  erb :question, layout: :layout
end





