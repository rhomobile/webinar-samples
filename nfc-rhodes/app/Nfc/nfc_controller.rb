require 'rho/rhocontroller'
require 'helpers/browser_helper'

class NfcController < Rho::RhoController
  include BrowserHelper

  #GET /Nfc
  def index
    @nfc_status = Rho::NFCManager.is_enabled.to_s
    render :back => '/app'
  end
  
  def start_nfc_push
    puts "Sending #{@params['push'].inspect}..."
    payload = Rho::NFCManager.make_payload_with_well_known_text("en", @params['push'])
    hash = { 
      'id' => [0], 
      'type' => Rho::NdefRecord:: RTD_TEXT, 
      'tnf' => Rho::NdefRecord::TNF_WELL_KNOWN, 
      'payload' => payload
    }
    record = Rho::NFCManager.make_NdefRecord_from_hash(hash)
    records = [record]
    msg = Rho::NFCManager.make_NdefMessage_from_array_of_NdefRecord(records)
    
    # start push message
    Rho::NFCManager.p2p_enable_foreground_nde_push(msg)
    @notice = "Started push."
    render :action => :index
  end
  
  def stop_nfc_push
    Rho::NFCManager.p2p_disable_foreground_nde_push
    @notice = "Stopped push."
    render :action => :index
  end
  
  def nfc_callback
    if @params['messages'].size > 0 and @params['messages'][0]['records'].size > 0
      @msg = @params['messages'][0]['records'][0]['payload_as_string']
    else
      @msg = "No payload"
    end
    Alert.show_popup( {
        :message => @msg, 
        :title => "NFC P2P", 
        :buttons => ["Close"] } 
    )
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
