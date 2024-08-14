require 'rails_helper'

RSpec.describe Job, type: :model do
  it "is valid with valid attributes" do
    job = Job.new(
      url: "https://example.com/job1",
      employer_name: "Example Corp",
      employer_description: "A leading example company.",
      job_title: "Software Engineer",
      job_description: "Develop and maintain software solutions.",
      year_of_experience: 3,
      education_requirement: "Bachelor's Degree",
      industry: "Technology",
      base_salary: 80000,
      employment_type_id: 1
    )
    expect(job).to be_valid
  end

  it "is not valid without a job title" do
    job = Job.new(job_title: nil)
    expect(job).to_not be_valid
  end
end
