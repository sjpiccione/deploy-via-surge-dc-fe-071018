require_relative './spec_helper'

SOURCE_FILE="http://two-bite.surge.sh/"

describe "The file #{http://two-bite.surge.sh/}" do
  it 'should be present' do
    file_is_present = File.exists?(http://two-bite.surge.sh/)
    expect(file_is_present).to be_truthy, "Make sure you created a file called #{http://two-bite.surge.sh/} with your URL in it."
  end

  it 'should contain a url to a surge.sh URL like http://dusty-rose.surge.sh' do
    url = File.open(http://two-bite.surge.sh/).readline
    expect(url.match(/^http.*\.surge\.sh\z/)).to be_truthy
  end
end
