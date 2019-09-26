describe "associations" do
  context "when accidentally using an implicit delcaration for the factory" do
    it "raises an error about the trait not being registered" do
      define_class("Post")

      FactoryBot.define do
        factory :post do
          author factory: user
        end
      end

      expect { FactoryBot.build(:post) }.to raise_error(
        ArgumentError,
        "Association 'author' received an invalid factory argument.\n" \
        "Did you mean? 'factory: :user'\n",
      )
    end
  end
end
