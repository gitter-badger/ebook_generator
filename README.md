# EbookGenerator

Rails gem to generate eBooks using the Markdown syntax to format content for sections of the book.

An example of this gem being used can be found at: [ebook-generator.affinity-tech.com](http://ebook-generator.affinity-tech.com)

Requires:
- Rails 4
- Postgres with UUID support (uses the id to generate the ebook UUID)
- Rubyzip (to generate the .epub)
- Redcarpet (to render Markdown into HTML)
- Friendly_id (for nice slugs and for naming of generated ebook file)

## Installation

Add this line to your application's Gemfile:

    gem 'ebook_generator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ebook_generator

## Usage

Generate the tables needed to process the ebooks:
`rails generate ebook_generator`

Migrate the database:
`rake db:migrate`

Pass the ebook object you want to generate:
`EbookGenerator.generate_ebook(ebook_object)`

This will then generate an ePub based on the values in the db and output to the /tmp folder.

## Feature roadmap

### 1.0.0
- Kindle support
- Tests

### 1.1.0
- Style editing

### 1.2.0
- PDF out

### 1.3.0
- HTML out
- Image support for the front cover

### 1.4.0
- HTML to eBook conversion

## Contributing

1. Fork it ( https://github.com/[my-github-username]/ebook_generator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
