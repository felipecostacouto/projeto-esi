require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the AboutHelper. For example:
#
# describe AboutHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe AboutHelper, type: :helper do
  def create_random_suggestion
    random_suggestion = "name_" + rand(1000).to_s
    @new_request = About.new({sugestao: random_suggestion})
    @new_request.save
  end
end
