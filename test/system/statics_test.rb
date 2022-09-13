require 'application_system_test_case'

class StaticsTest < ApplicationSystemTestCase
  setup do
    @static = statics(:one)
  end

  test 'visiting the index' do
    visit statics_url
    assert_selector 'h1', text: 'Statics'
  end

  test 'should create static' do
    visit statics_url
    click_on 'New static'

    click_on 'Create Static'

    assert_text 'Static was successfully created'
    click_on 'Back'
  end

  test 'should update Static' do
    visit static_url(@static)
    click_on 'Edit this static', match: :first

    click_on 'Update Static'

    assert_text 'Static was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Static' do
    visit static_url(@static)
    click_on 'Destroy this static', match: :first

    assert_text 'Static was successfully destroyed'
  end
end
