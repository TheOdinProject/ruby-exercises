require_relative "../exercises/contains_exercises"

describe "#contains?" do
  let(:nested_hash) do
    {
      data: {
        duplicate: "e",
        stuff: {
          thing: {
            banana: "banana",
            more_stuff: {
              something: "foo"
            }
          }
        },
        info: {
          duplicate: "e",
          magic_number: 44,
          empty: nil
        }
      }
    }
  end

  it "returns true if the provided number is a value in the hash" do
    present_number = 44
    expect(contains?(nested_hash, present_number)).to be true
  end

  it "returns true if the provided string is a value in the hash" do
    present_string = "foo"
    expect(contains?(nested_hash, present_string)).to be true
  end

  it "returns false when the provided string is not a value in the hash" do
    absent_string = "bar"
    expect(contains?(nested_hash, absent_string)).to be false
  end

  it "returns true when looking for a value that is present multiple times" do
    duplicated_value = "e"
    expect(contains?(nested_hash, duplicated_value)).to be true
  end

  it "returns true when the provided value is present and is `nil`" do
    expect(contains?(nested_hash, nil)).to be true
  end
end
