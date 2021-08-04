FactoryBot.define do
  factory :post do
    name { "hoge" }
    body { "test" }
    stockprice { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test.jpg')) }
    association :user
  end
end