require 'rails_helper'

RSpec.describe ArtistsController do

  describe "GET new" do
    it "redirects when access is turned off" do
      p = Preference.create(allow_create_artists: false)
      get :new
      expect(response).to redirect_to artists_path
    end
  end

end

require 'rails_helper'

RSpec.describe Preference, type: :model do
  it "has the right fields" do
    p = Preference.new(allow_create_artists: false, allow_create_songs: true)
    expect(p.allow_create_artists).to eq false
    expect(p.allow_create_songs).to eq true
  end
end

