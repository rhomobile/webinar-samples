require 'rho/rhocontroller'
require 'helpers/browser_helper'

class NfcController < Rho::RhoController
  include BrowserHelper

  #GET /Nfc
  def index
    @nfc_status = Rho::NFCManager.is_enabled.to_s
    render :back => '/app'
  end
  
  def nfc_callback
    @log = "TAG received: #{Time.now.strftime('%H:%M:%S')}"
    add_to_log(@log)
  end
  
  def add_to_log(msg)
    WebView.execute_js('setLog("'+msg+'");')
  end
  
  def test_ndef_read(tag)
    result = "No records..."
    ndef = tag.get_tech(Rho::NFCTagTechnology::NDEF)
    if ndef != nil
      ndef.connect
      msg = ndef.read_NdefMessage
      records = msg.get_records
      
      puts "msg: #{msg.inspect}"
      puts "records: #{records.inspect}"
      
      r_a = []
      records.each do |record|
        r_a << record.make_hash
      end
      
      msg_hash = { 'records' => r_a }
      puts "records after processing: #{msg_hash.inspect}"
      
      result = "Tag Result: " + msg_hash['records'][0]['payload_as_string'] if msg_hash['records'].size > 0
      ndef.close
    end
    result
  end
  
  def nfc_tech_callback
    @msg = 'Tech received! Reading tag...'
    add_to_log(@msg)
    tag = Rho::NFCManager.get_current_Tag
    if tag != nil
      @msg = test_ndef_read(tag)
    else
      @msg = "Tag is nil!"
    end
    add_to_log(@msg)
  end
end
