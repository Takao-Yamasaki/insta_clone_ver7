require 'rails_helper'

Rspec.describe '投稿', type: :system do
  let!(:user) { create(:user) }
  before do
    login_as(user)
  end

  describe '投稿' do
    it '投稿ができること' do
      within '#header' do
        click_on '投稿'
      end
      fill_in '本文', with: 'テキストです'
      attach_file '画像', Rails.root.join('spec', 'fixture', 'dummy.jpg')
      click_on '登録する'
      expect(page).to have_content '投稿しました'
    end

    describe '編集' do 
      let!(:post) { create(:post, user: user) }
      it '編集ができること' do
        visit "/posts/#{post.id}"
        find('postDropdownMenuLink').click
        click_on '編集'
        fill_in '本文', with: 'テキストです'
        click_on '更新する'
        expect(page).to have_content '投稿を更新しました'
        expect(page).to have_content 'テキストです'
      end
    end

    describe '削除' do
      let!(:post) { create(:post, user: user) }
      it '削除ができること' do
        visit "/posts/#{post.id}"
        find('#postDropdownMenuLink').click
        accept_confirm { click_on '削除' }
        except(page).to have_content '投稿しました'
        except(page).to have_content post.body
      end
    end
  end
end
