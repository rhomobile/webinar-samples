require 'rho/rhocontroller'
require 'helpers/browser_helper'
require 'json'

class RenderController < Rho::RhoController
  include BrowserHelper
  
  def alljson
    
    if $UseRhosync == true
    
      @contacts = Contact.find(:all)
      temp = []
      index = 1;
      @contacts.each do |contact|
        temp << { 
                  :index => index,
                  :handle => contact.object, 
                  :position => contact.jobTitle,
                  :firstName => contact.contactFirstName, 
                  :lastName => contact.contactLastName,
                  :type => contact.contactType,
                  :workPhone => contact.workPhone,
                  :cellPhone => contact.cellularPhone,
                  :email => contact.contactEmail,
                  :address => contact.primaryAddress,
                  :city => contact.primaryCity,
                  :state => contact.primaryStateProvince,
                  :postalCode => contact.primaryZipCode,
                  #:lastVisted => 
                  :description => contact.description
                }
        index = index+1;
      end
  
      all = { :contacts => temp }
    else    
      all = { :contacts => [
        {:index => 1, :handle => 'JulioBenesh-Doctor', :position => 'Doctor', :firstName => 'Julio', :lastName => 'Benesh'},
        {:index => 2, :handle => 'JulioMinich-Therapist', :position => 'Therapist', :firstName => 'Julio', :lastName => 'Minich'},
        {:index => 3, :handle => 'TaniaRicco-Doctor', :position => 'Doctor', :firstName => 'Tania', :lastName => 'Ricco'},
        {:index => 4, :handle => 'OdessaSteuck-Doctor', :position => 'Doctor', :firstName => 'Odessa', :lastName => 'Steuck'},
        {:index => 5, :handle => 'NelsonRaber-Doctor', :position => 'Doctor', :firstName => 'Nelson', :lastName => 'Raber'},
        {:index => 6, :handle => 'TyroneScannell-Doctor', :position => 'Doctor', :firstName => 'Tyrone', :lastName => 'Scannell'},
        {:index => 7, :handle => 'AllanDisbrow-Doctor', :position => 'Doctor', :firstName => 'Allan', :lastName => 'Disbrow'},
        {:index => 8, :handle => 'CodyHerrell-Specialist', :position => 'Specialist', :firstName => 'Cody', :lastName => 'Herrell'},
        {:index => 9, :handle => 'JulioBurgoyne-Doctor', :position => 'Doctor', :firstName => 'Julio', :lastName => 'Burgoyne'},
        {:index => 10, :handle => 'JessieBoedeker-Doctor', :position => 'Doctor', :firstName => 'Jessie', :lastName => 'Boedeker'},
        {:index => 11, :handle => 'AllanLeyendecker-Doctor', :position => 'Doctor', :firstName => 'Allan', :lastName => 'Leyendecker'},
        {:index => 12, :handle => 'JavierLockley-Doctor', :position => 'Doctor', :firstName => 'Javier', :lastName => 'Lockley'},
        {:index => 13, :handle => 'GuyReasor-Doctor', :position => 'Doctor', :firstName => 'Guy', :lastName => 'Reasor'},
        {:index => 14, :handle => 'JamieBrummer-Doctor', :position => 'Doctor', :firstName => 'Jamie', :lastName => 'Brummer'},
        {:index => 15, :handle => 'JessieCasa-Doctor', :position => 'Doctor', :firstName => 'Jessie', :lastName => 'Casa'},
        {:index => 16, :handle => 'MarcieRicca-Doctor', :position => 'Doctor', :firstName => 'Marcie', :lastName => 'Ricca'},
        {:index => 17, :handle => 'GayLamoureaux-Doctor', :position => 'Doctor', :firstName => 'Gay', :lastName => 'Lamoureaux'},
        {:index => 18, :handle => 'AltheaSturtz-Doctor', :position => 'Doctor', :firstName => 'Althea', :lastName => 'Sturtz'},
        {:index => 19, :handle => 'KenyaMorocco-Doctor', :position => 'Doctor', :firstName => 'Kenya', :lastName => 'Morocco'},
        {:index => 20, :handle => 'RaePasquariello-Doctor', :position => 'Doctor', :firstName => 'Rae', :lastName => 'Pasquariello'},
        {:index => 21, :handle => 'TedAbundis-Doctor', :position => 'Doctor', :firstName => 'Ted', :lastName => 'Abundis'},
        {:index => 22, :handle => 'JessieSchacherer-Doctor', :position => 'Doctor', :firstName => 'Jessie', :lastName => 'Schacherer'},
        {:index => 23, :handle => 'JamieGleaves-Doctor', :position => 'Doctor', :firstName => 'Jamie', :lastName => 'Gleaves'},
        {:index => 24, :handle => 'HillarySpiva-Doctor', :position => 'Doctor', :firstName => 'Hillary', :lastName => 'Spiva'},
        {:index => 25, :handle => 'ElinorRockefeller-Doctor', :position => 'Doctor', :firstName => 'Elinor', :lastName => 'Rockefeller'},
        {:index => 26, :handle => 'DonaClauss-Doctor', :position => 'Doctor', :firstName => 'Dona', :lastName => 'Clauss'},
        {:index => 27, :handle => 'AshleeKennerly-Doctor', :position => 'Doctor', :firstName => 'Ashlee', :lastName => 'Kennerly'},
        {:index => 28, :handle => 'AlanaWiersma-Doctor', :position => 'Doctor', :firstName => 'Alana', :lastName => 'Wiersma'},
        {:index => 29, :handle => 'KellyHoldman-Doctor', :position => 'Doctor', :firstName => 'Kelly', :lastName => 'Holdman'},
        {:index => 30, :handle => 'MathewLofthouse-Doctor', :position => 'Doctor', :firstName => 'Mathew', :lastName => 'Lofthouse'},
        {:index => 31, :handle => 'DonaTatman-Doctor', :position => 'Doctor', :firstName => 'Dona', :lastName => 'Tatman'},
        {:index => 32, :handle => 'ClaytonClear-Doctor', :position => 'Doctor', :firstName => 'Clayton', :lastName => 'Clear'},
        {:index => 33, :handle => 'RosalindaUrman-Doctor', :position => 'Doctor', :firstName => 'Rosalinda', :lastName => 'Urman'},
        {:index => 34, :handle => 'CodySayler-Doctor', :position => 'Doctor', :firstName => 'Cody', :lastName => 'Sayler'},
        {:index => 35, :handle => 'OdessaAveritt-Doctor', :position => 'Doctor', :firstName => 'Odessa', :lastName => 'Averitt'},
        {:index => 36, :handle => 'TedPoage-Doctor', :position => 'Doctor', :firstName => 'Ted', :lastName => 'Poage'},
        {:index => 37, :handle => 'PenelopeGayer-Doctor', :position => 'Doctor', :firstName => 'Penelope', :lastName => 'Gayer'},
        {:index => 38, :handle => 'KatyBluford-Doctor', :position => 'Doctor', :firstName => 'Katy', :lastName => 'Bluford'},
        {:index => 39, :handle => 'KellyMchargue-Doctor', :position => 'Doctor', :firstName => 'Kelly', :lastName => 'Mchargue'},
        {:index => 40, :handle => 'KathrineGustavson-Doctor', :position => 'Doctor', :firstName => 'Kathrine', :lastName => 'Gustavson'},
        {:index => 41, :handle => 'KellyHartson-Doctor', :position => 'Doctor', :firstName => 'Kelly', :lastName => 'Hartson'},
        {:index => 42, :handle => 'CarleneSummitt-Doctor', :position => 'Doctor', :firstName => 'Carlene', :lastName => 'Summitt'},
        {:index => 43, :handle => 'KathrineVrabel-Doctor', :position => 'Doctor', :firstName => 'Kathrine', :lastName => 'Vrabel'},
        {:index => 44, :handle => 'RoxieMcconn-Doctor', :position => 'Doctor', :firstName => 'Roxie', :lastName => 'Mcconn'},
        {:index => 45, :handle => 'MargeryPullman-Doctor', :position => 'Doctor', :firstName => 'Margery', :lastName => 'Pullman'},
        {:index => 46, :handle => 'AvisBueche-Doctor', :position => 'Doctor', :firstName => 'Avis', :lastName => 'Bueche'},
        {:index => 47, :handle => 'EsmeraldaKatzer-Doctor', :position => 'Doctor', :firstName => 'Esmeralda', :lastName => 'Katzer'},
        {:index => 48, :handle => 'TaniaBelmonte-Doctor', :position => 'Doctor', :firstName => 'Tania', :lastName => 'Belmonte'},
        {:index => 49, :handle => 'MalindaKwak-Doctor', :position => 'Doctor', :firstName => 'Malinda', :lastName => 'Kwak'},
        {:index => 50, :handle => 'TanishaJobin-Doctor', :position => 'Doctor', :firstName => 'Tanisha', :lastName => 'Jobin'},
        {:index => 51, :handle => 'KellyDziedzic-Doctor', :position => 'Doctor', :firstName => 'Kelly', :lastName => 'Dziedzic'},
        {:index => 52, :handle => 'DarrenDevalle-Doctor', :position => 'Doctor', :firstName => 'Darren', :lastName => 'Devalle'},
        {:index => 53, :handle => 'JulioBuchannon-Doctor', :position => 'Doctor', :firstName => 'Julio', :lastName => 'Buchannon'},
        {:index => 54, :handle => 'DarrenSchreier-Doctor', :position => 'Doctor', :firstName => 'Darren', :lastName => 'Schreier'},
        {:index => 55, :handle => 'JamiePollman-Doctor', :position => 'Doctor', :firstName => 'Jamie', :lastName => 'Pollman'},
        {:index => 56, :handle => 'KarinaPompey-Doctor', :position => 'Doctor', :firstName => 'Karina', :lastName => 'Pompey'},
        {:index => 57, :handle => 'HughSnover-Doctor', :position => 'Doctor', :firstName => 'Hugh', :lastName => 'Snover'},
        {:index => 58, :handle => 'ZebraEvilias-Doctor', :position => 'Doctor', :firstName => 'Zebra', :lastName => 'Evilias'}
      ]}
    
    end
    
    render :string => ::JSON.generate(all)
  end
end
