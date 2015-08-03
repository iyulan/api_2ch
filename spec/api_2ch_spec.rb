require 'spec_helper'

describe Api2ch do
  it 'has a version number' do
    expect(Api2ch::VERSION).not_to be nil
  end

  describe "get_threads" do
    request = Api2ch::Request.new
    json    = request.get_threads('pr')

    it 'return right board title' do
      expect(json['board']).to eq('pr')
    end

    it 'return json threads' do
      expect(json['threads']).to be_an_instance_of(Array)
    end

  end
end