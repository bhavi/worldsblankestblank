require 'spec_helper'

describe Image do
  describe ".search" do
    let(:image) { Fabricate(:image, name: 'foo', description: 'bar') }
    let(:image2) { Fabricate(:image, name: 'poo', description: 'bar') }

    it 'returns mathing images' do
      Image.search('foo', 'bar').should == [image]
    end

    it 'does not return mismatches' do
      Image.search('foo', 'bar').should_not include(image2)
    end

  end

  describe ".recent" do
    let(:image) { Fabricate(:image, name: 'foo', description: 'bar') }
    let(:image2) { Fabricate(:image, name: 'poo', description: 'bar') }

    it 'returns mathing images' do
      Image.search('foo', 'bar').should == [image]
    end

    it 'does not return mismatches' do
      Image.recent.should == (image2)
    end

  end

end
