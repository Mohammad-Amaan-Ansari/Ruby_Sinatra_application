# Ruby Sinatra Application

A simple web application built with Sinatra and SQLite3 that demonstrates basic CRUD operations using `sinatra-activerecord`.

---

## 🚀 Overview

This application allows users to submit and manage entries (e.g., submissions or posts). It uses:

- **Ruby** (v3.1.0)  
- **Sinatra** (v4.0.0)  
- `sinatra-activerecord` for ORM and migrations  
- **SQLite3** as the development database  
- **Bundler** to manage gem dependencies  

---

## 📝 Prerequisites

Before you begin, make sure you have the following installed:

- Ruby (≥ 3.0)  
- Bundler (`gem install bundler`)  
- SQLite3  
- Git (to clone the repository)  

---

## ⚙️ Installation & Setup

**1. Clone the repository:**

```bash
git clone https://github.com/Mohammad-Amaan-Ansari/Ruby_Sinatra_application.git
cd Ruby_Sinatra_application

2. Install gem dependencies:
bundle install

3. Configure the database
The project is preconfigured to use SQLite3.
Database configuration is in: config/database.yml.

4. Create and migrate the database:
bundle exec rake db:create
bundle exec rake db:migrate

▶️ Running the Application
To start the Sinatra server:
ruby app.rb

The application will be available at: http://localhost:4567

Alternatively, you can use Rack:
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
│   └── css/             # Stylesheets
├── routes/              # Route handlers split by functionality
├── views/               # ERB templates
├── Gemfile              # Gem dependencies
├── Rakefile             # Rake tasks (db:create, db:migrate, etc.)
└── README.md            # Project documentation
```
# 🤝 Contributing
Contributions are welcome! Follow these steps:

- Fork this repository
- Create a branch: git checkout -b feature-name
- Commit your changes: git commit -m 'Add some feature'
- Push to your branch: git push origin feature-name
- Open a Pull Request
