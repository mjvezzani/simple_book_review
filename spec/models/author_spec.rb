require 'rails_helper'

describe Author do
  before :each do
    @author = Author.new(first_name: 'John', last_name: 'Steinbeck')
  end
  it 'is valid with a first and last name' do
    expect(@author).to be_valid
  end
  it 'is invalid without a first name' do
    @author.first_name = nil
    expect(@author).to be_invalid
  end
  it 'is invalid without a last name' do
    @author.last_name = nil
    expect(@author).to be_invalid
  end
  it 'returns a full name' do
    expect(@author.full_name).to eq 'John Steinbeck'
  end
end
