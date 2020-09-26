## Getting Started

To start clone the repo on your machine:
```
git@github.com:noemi-ashizuka/clever_closet.git
```

You can erase the git hisoty and initialize git
```
rm -rf .git
git init
git add .
git commit -m "initial commit"
```
You will need a Cloudinary key from https://cloudinary.com/ and you can store it in an .env file with the variable name *CLOUDINARY_URL* before seeding. This project also uses the claudinary AI to erase the background of the photos, you can activate it from your cloudinary account, but it is optional.

The project has seeds you can use to test it:

```
bundle install
rails db:migrate
rails db:seed
```
