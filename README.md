Ruby Sinatra Application

A simple web application built with Sinatra and SQLite3 that demonstrates basic CRUD operations using sinatra-activerecord.

🚀 Overview

This application allows users to submit and manage entries (e.g., submissions or posts). It uses:

Ruby (v3.1.0)

Sinatra (v4.0.0)

sinatra-activerecord for ORM and migrations

SQLite3 as the development database

Bundler to manage gem dependencies

📝 Prerequisites

Before you begin, make sure you have the following installed:

Ruby (≥ 3.0)

Bundler (gem install bundler)

SQLite3

Git (to clone the repository)

⚙️ Installation & Setup

Clone the repository

git clone https://github.com/Mohammad-Amaan-Ansari/Ruby_Sinatra_application.git
cd Ruby_Sinatra_application

Install gem dependencies

bundle install

Configure the database

The project is preconfigured to use SQLite3. The default configuration file is at config/database.yml.

Create and migrate the database

bundle exec rake db:create
bundle exec rake db:migrate

▶️ Running the Application

Start the Sinatra server by running:

ruby app.rb

By default, the app will be available at http://localhost:4567.

Alternatively, you can use rackup:

bundle exec rackup -p 4567

📂 Project Structure

.
├── app.rb               # Main Sinatra application file
├── config.ru            # Rack configuration
├── config/
│   └── database.yml     # Database settings
├── db/
│   ├── migrate/         # Migration files
│   └── schema.rb        # Current DB schema
├── lib/
│   └── submission.rb    # Model definitions
├── public/
│   └── css/            # Stylesheets
├── routes/              # Route handlers split by functionality
├── views/               # ERB templates
├── Gemfile              # Gem dependencies
├── Rakefile             # Rake tasks (db:create, db:migrate, etc.)
└── README.md            # Project documentation

🤝 Contributing

Contributions are welcome! Feel free to:

 1.Fork this repository

 2.Create a feature branch (git checkout -b feature-name)

 3.Commit your changes (git commit -m 'Add some feature')

 4.Push to the branch (git push origin feature-name)

 5.Open a Pull Request