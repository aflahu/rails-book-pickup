class BooksController < ApplicationController
  def index
    res = HTTP.get("http://openlibrary.org/subjects/#{params[:subjects]}.json").body
    res = JSON.parse(res)

    return render json: { error_message: 'subjects is required' }, status: :bad_request if params[:subjects].nil?

    books = res['works'].map do |book|
      authors = book['authors'].map { |author| author['name'] }
      {
        work_key: book['key'],
        title: book['title'],
        author: authors.join(', '),
        edition_number: book['edition_count']
      }
    end

    render json: { data: books }, status: :ok
  end
end
