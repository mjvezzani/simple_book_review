require 'rails_helper'

describe Book do
  before :each do
    @book = Book.new(title: 'Of Mice And Men')
    @author = Author.new(first_name: 'John', last_name: 'Steinbeck')
    @book.author = @author
  end
  it 'is valid with a title and author' do
    expect(@book).to be_valid
  end
  it 'is invalid without a title' do
    @book.title = nil
    expect(@book).to be_invalid
  end
  it 'is invalid without an author' do
    @book.author = nil
    expect(@book).to be_invalid
  end
  it 'returns title and author' do
    expect(@book.title_and_author).to eq 'Of Mice And Men: by John Steinbeck'
  end
end
