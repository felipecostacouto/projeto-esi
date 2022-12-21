require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the BuscarDiretorioHelper. For example:
#
#describe BuscarDiretorioHelper do
#   describe "string concat" do
#    it "concats two strings with spaces" do
#      expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
#end
RSpec.describe BuscarDiretorioHelper, type: :helper do
  def create_random_search
    random_search = "name_" + rand(1000).to_s
    @new_search = Buscar.new({search_input: random_search})
    @new_search.save
  end
end
