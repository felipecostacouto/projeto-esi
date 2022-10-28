require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the DiretoriosHelper. For example:
#
# describe DiretoriosHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe DiretoriosHelper, type: :helper do
  # pending "add some examples to (or delete) #{__FILE__}"

  def create_random_directory
    random_name = "name_" + rand(1000).to_s
    @new_diretorio = Diretorio.new({name: random_name, path: "/root/" + random_name})
    @new_diretorio.save
  end

  def create_random_directory_with_path(path_name)
    random_name = "name_" + rand(1000).to_s
    @new_diretorio = Diretorio.new({name: random_name, path: path_name})
    @new_diretorio.save
  end

  def create_random_directory_with_name(directory_name)
    @new_diretorio = Diretorio.new({name: directory_name, path: "/root/" + directory_name})
    @new_diretorio.save
  end

  def create_random_directories(number_of_directories)
    i = 0
    while i < number_of_directories
      create_random_directory
      i += 1
    end
  end
end
