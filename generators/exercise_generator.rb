require "fileutils"

class ExerciseGenerator
  def initialize(namespace, exercise_group_name, exercise_name)
    @namespace = namespace
    @exercise_group_name = exercise_group_name
    @exercise_name = exercise_name
  end

  TEMPLATE_DIR_PATH = "generators/exercise_template".freeze

  def generate
    unless Dir.exist?(exercise_group_path)
      make_exercise_directory
      make_solutions_directory
    end

    FileUtils.touch(exercise_file_path)
    File.write(spec_file_path, spec_template)
  end

  private

  attr_reader :namespace, :exercise_group_name, :exercise_name

  def exercise_group_path
    File.join(namespace, exercise_group_name)
  end

  def exercise_directory_path
    File.join(exercise_group_path, "exercises")
  end

  def exercise_file_path
    File.join(exercise_directory_path, "#{exercise_name}.rb")
  end

  def spec_file_path
    File.join(exercise_group_path, "spec", "#{exercise_name}_spec.rb")
  end

  def spec_template
    <<~SPEC
      require 'spec_helper'
      require_relative '../exercises/#{exercise_name}'

      RSpec.describe '' do
      end
    SPEC
  end

  def make_exercise_directory
    FileUtils::mkdir_p(exercise_directory_path)
    FileUtils::copy_entry(TEMPLATE_DIR_PATH, exercise_group_path)
  end

  def make_solutions_directory
    solutions_group_path = File.join("solutions", exercise_group_path)
    solutions_exercise_path = File.join("solutions", exercise_directory_path)

    FileUtils::mkdir_p(solutions_exercise_path)
    FileUtils::copy_entry(TEMPLATE_DIR_PATH, solutions_group_path)
  end
end
