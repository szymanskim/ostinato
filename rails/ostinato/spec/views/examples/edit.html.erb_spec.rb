require 'rails_helper'

RSpec.describe 'examples/edit', type: :view do
  before(:each) do
    @example = assign(:example, Example.create!(
                                  name: 'MyString',
                                  description: 'MyText',
    ))
  end

  it 'renders the edit example form' do
    render

    assert_select 'form[action=?][method=?]', example_path(@example), 'post' do
      assert_select 'input#example_name[name=?]', 'example[name]'

      assert_select 'textarea#example_description[name=?]', 'example[description]'
    end
  end
end
