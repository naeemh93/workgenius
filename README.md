# README

Code Flow:
1) Created Webhook Controller to handle few events like opened, handle_inbound 
 and click events. 

2) Created the Message based on different events and then if Message is 
created succesfully, run  ruby background job and pass the data to 
process through websockets using Action Cable in Rails.

3) 
