# encoding: utf-8;

require 'rest-client';

#SepUrl
url = "http://www.cedulaprofesional.sep.gob.mx/cedula/buscaCedulaJson.action";

params = 'json= {"maxResult":"0","idCedula":":7018147","nombre":"","paterno":"","materno":"","h_genero":"","genero":"","annioInit":"","annioEnd":"","insedo":"","inscons":"","institucion":"TODAS"}';



begin
  response = RestClient.post url, params
  puts response.to_str;
  
  resultado = JSON.parse(response.to_str)

  resultado["items"].each do |registro|
    puts "Person";
    puts registro;
    puts "________________________";
  end

rescue => e
  puts "Error #{e.to_s}"
end

