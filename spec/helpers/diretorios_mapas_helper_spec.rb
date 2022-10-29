require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the DiretoriosMapasHelper. For example:
#
# describe DiretoriosMapasHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe DiretoriosMapasHelper, type: :helper do

  def get_directories_in_root
    return DiretoriosMapa.where(parent: Diretorio.where(name: 'root').ids[0])
  end
end
