  def send_text_message
    twilio_sid = "AC530e112a6eeb9328d59f68594b26ec73"
    twilio_token = "d18bed8fe1a6a4b96b59f46843e83930"
    twilio_phone_number = '16625401660'

    @twilio_client = Twilio::REST::Client.new(twilio_sid, twilio_token)
puts @twilio_client.inspect

    @twilio_client.account.sms.messages.create(
      :from => twilio_phone_number,
      :to => '+918802',
      :body => "This is an message. It gets sent to "
    )
  end

