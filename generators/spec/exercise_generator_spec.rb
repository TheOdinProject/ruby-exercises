require_relative "../exercise_generator"

describe ExerciseGenerator do
  describe "#generate" do
    subject(:generator) { described_class.new("test_namespace", "1_test_group", "test_exercise") }

    before do
      allow(FileUtils).to receive(:mkdir_p)
      allow(FileUtils).to receive(:copy_entry)
      allow(FileUtils).to receive(:touch)
      allow(File).to receive(:write)
    end

    it "sends a `::touch` message to `FileUtils` to create the exercise file in the `exercises` subdir of the exercise directory" do
      generator.generate

      expected_filename = "test_namespace/1_test_group/exercises/test_exercise.rb"
      expect(FileUtils).to have_received(:touch).with(expected_filename)
    end

    it "sends a `::write` message to `File` to create the spec file in the `spec` subdir of the exercise directory" do
      generator.generate

      expected_filename = "test_namespace/1_test_group/spec/test_exercise_spec.rb"
      expected_content = <<~FILE_CONTENT
        require 'spec_helper'
        require_relative '../exercises/test_exercise'

        RSpec.describe '' do
        end
      FILE_CONTENT

      expect(File).to have_received(:write).with(expected_filename, expected_content)
    end

    context "when the directory structure does not exist for the exercise" do
      before do
        allow(Dir).to receive(:exist?).and_return(false)
      end

      it "sends a `::mkdir_p` message to `FileUtils` to create exercise path" do
        generator.generate

        expected_path = "test_namespace/1_test_group/exercises"
        expect(FileUtils).to have_received(:mkdir_p).with(expected_path)
      end

      it "sends a `::copy_entry` message to `FileUtils` to copy boilerplate into exercise directory" do
        generator.generate

        expected_source = "generators/exercise_template"
        expected_target = "test_namespace/1_test_group"
        expect(FileUtils).to have_received(:copy_entry).with(expected_source, expected_target)
      end

      it "sends a `::mkdir_p` message to `FileUtils` to create solutions path" do
        generator.generate

        expected_path = "solutions/test_namespace/1_test_group/exercises"
        expect(FileUtils).to have_received(:mkdir_p).with(expected_path)
      end

      it "sends a `::copy_entry` message to `FileUtils` to copy boilerplate into solutions directory" do
        generator.generate

        expected_source = "generators/exercise_template"
        expected_target = "solutions/test_namespace/1_test_group"
        expect(FileUtils).to have_received(:copy_entry).with(expected_source, expected_target)
      end
    end

    context "when the directory structure already exists for exercise" do
      before do
        allow(Dir).to receive(:exist?).and_return(true)
      end

      it "does not send `::mkdir_p` message to `FileUtils`" do
        generator.generate
        expect(FileUtils).not_to have_received(:mkdir_p)
      end

      it "does not send a `::copy_entry` message to `FileUtils`" do
        generator.generate
        expect(FileUtils).not_to have_received(:copy_entry)
      end
    end
  end
end
