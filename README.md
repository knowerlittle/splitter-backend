
<img src="http://i.imgur.com/nG93ITp.jpg" width="320">

A Bill Splitting Hybrid Phone App that converts a photo of a bill into a digital list of items. The list can be sent to different emails to request payment via Paypal. <a style="text-decoration:none" href="https://vimeo.com/knowerlittle/billsplitter">Watch App Video</a>.
## App Backend
**Technologies used:**
<br>
`Ruby on Rails (API), Tesseract OCR, Imagemagick, Postgres, Heroku, AWS`
<br>
**Testing Frameworks:**
<br>
`Rspec`

Rails API back-end deployed on Heroku at [http://splitter-backend.herokuapp.com](http://splitter-backend.herokuapp.com/bills) outputting JSON data. Responsible for the Photo-to-Text conversion syncing with AWS and Postgres.

## Installation
1. Clone this repository
2. Install `Tesseract OCR` and `Imagemagick` for the image conversion <br>
	TESSERACT: `brew install tesseract` <br>
	IMAGEMAGICK: `brew install imagemagick`
3. Run `bundle install`
4. Run `rake db:create` to create databases
5. Run `rake db:migrate` to create database tables
4. Run `rspec` to make sure all tests are passing!
5. Run `rails s` to start server locally
6. Run in conjunction with the [FRONT END](http://github.com/knowerlittle/splitter-frontend) to test the app locally

## How it works
- The backend outputs JSON data, can be viewed at the local or online address at : `<address>/bills`
- There is no `home` page, the landing page presents an error when the `app` is really there
- Conversion happens in the the file located at `\lib\modules\converter.rb`
- Requires both `Tesseract` and `Imagemagick` to be installed on the system as the Photo-to-Text conversion happens on the command line
- Photos get converted to `base64` format and stored on `AWS` 

## Known Issues
- Tesseract Gem needs to be tweaked for better results
- Heroku dynos can fall asleep after long periods of inactivity

## Authors
- [Jack Hardy](https://github.com/jackhardy1)
- [Wayne Rumble](https://github.com/wrumble)
- [Matt Ward](https://github.com/iammatthewward)
- [Noah Pollock](https://github.com/knowerlittle)

License
-------
:hatching_chick: Free as a bird - 2016 :hatched_chick:

