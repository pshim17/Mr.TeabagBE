require 'rails_helper'

RSpec.describe TeaSubscription, type: :model do
  it { should belong_to(:tea) }
  it { should belong_to(:subscription) }
end
