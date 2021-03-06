require 'spec_helper'

describe PrivatePerson::Permission do
  # Check relationships
  it { should belong_to(:permissor) }
  it { should belong_to(:permissible) }

  describe 'Class Methods' do
    include_context 'permissions support'

    describe '.by_permissor' do
      subject { PrivatePerson::Permission.by_permissor(followed_user) }
      its(:count) { should be 8 }
      it { should include general_permission }
      it { should include following_users_permission }
      it { should include user_followers_permission }
      it { should include follower_of_followers_permission }
      it { should include following_of_followings_permission }
      it { should include public_permission }
      it { should include none_permission }
      it { should include forbidden_permission }
    end

    describe '.by_permissible' do
      subject { PrivatePerson::Permission.by_permissible(following_page) }
      it { should eq [following_users_permission]}
    end

    describe '.by_wildcard' do
      subject { PrivatePerson::Permission.by_wildcard('Page') }
      it { should eq [general_permission] }
    end

    describe '.by_relationship_type' do
      subject { PrivatePerson::Permission.by_relationship_type('following_users') }
      its(:count) { should be 3 }
      it { should include general_permission }
      it { should include following_users_permission }
      it { should include public_permission }
    end

    describe '.blocked' do
      subject { PrivatePerson::Permission.blocked }
      its(:count) { should be 2 }
      it { should include none_permission }
      it { should include forbidden_permission }
    end

    describe '.legitimate' do
      subject { PrivatePerson::Permission.legitimate }
      its(:count) { should be 6 }
      it { should include general_permission }
      it { should include following_users_permission }
      it { should include user_followers_permission }
      it { should include follower_of_followers_permission }
      it { should include following_of_followings_permission }
      it { should include public_permission }
    end

    describe '.permissible_types' do
      subject { PrivatePerson::Permission.permissible_types.sort }
      it { should be_an Array }
      it { should eq %w{following_users user_followers following_of_followings follower_of_followers public}.sort }
    end
  end

  describe 'Instance Methods' do
    include_context 'permissions support'

    describe '#existing_types' do
      subject { following_users_permission.existing_types.sort }
      it { should be_an Array }
      it { should eq %w{following_users user_followers following_of_followings follower_of_followers public}.sort }
    end
  end

end
