
# 🍿 Task Manager

A small web application to keep track of movies you have watched or would like to watch. You can also organize movie lists by genre!

<div class="d-flex">

<img width="410" alt="image" src="https://user-images.githubusercontent.com/114731843/207112797-372067ea-f092-4a56-bd7d-004f239f8335.png">
<img width="410" height="205" alt="image" src="https://user-images.githubusercontent.com/114731843/207113844-7860975d-d26b-4162-be12-0eb47fc78685.png">
</div> 

## Getting Started
### Setup

Install gems
```
bundle install
```
Install JS packages
```
yarn install
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables. For any APIs, see group Slack channel.
```
CLOUDINARY_URL=your_own_cloudinary_url_key
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server
```
rails s
```

## Built With
- [Rails 7](https://guides.rubyonrails.org/) - Backend / Front-end
- [Heroku](https://heroku.com/) - Deployment
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Bootstrap](https://getbootstrap.com/) — Styling
- [Figma](https://www.figma.com) — Prototyping

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
