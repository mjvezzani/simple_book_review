require 'rails_helper'

describe BooksController do
  describe 'GET #show' do
    it 'assigns a book id to the @book variable' do
      author = Author.create(first_name: 'Mike', last_name: "Fez")
      book = Book.create(title: 'My Book', author: author)
      get :show, id: book
      expect(assigns(:book)).to eq book
    end
  end
end
