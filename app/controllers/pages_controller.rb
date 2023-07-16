class PagesController < ApplicationController
  def home
  end

  def testimonials
    @quotes = Quote.all.shuffle
  end

  def portfolio
    @quotes = Quote.all.load_async.shuffle.first(20)
    @work = Work.all.load_async
    @education = Education.all.load_async
    @projects = Project.all.load_async
    @technologies = ['Ruby', 'Ruby on Rails', 'Stimulus', 'Turbo', 'PostgreSQL', 'Elastic Search', 'Heroku', 'HTML', 'CSS', 'TailwindCSS', 'JS', 'Figma', 'Stripe', 'SQL', 'React', 'React Native']
  end

  def download_resume
    send_file(
      "#{Rails.root}/public/george_kettle_resume.pdf",
      filename: "george_kettle_resume.pdf",
      type: "application/pdf"
    )
  end
end
