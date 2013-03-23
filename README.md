# ErrorMessageOn

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'error_message_on'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install error_message_on

## Usage

Gem generate formtastic style inline errors (with <p class="inline-errors">error text</p>). You may override this.

    <% semantic_form_for ... %>
      <%= form.inputs do %>
        <%= form.error_message_on :body %>
        ...

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
