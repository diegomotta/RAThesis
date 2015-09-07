json.array!(@estadisticas) do |estadistica|
  json.extract! estadistica, :id, :califproducto, :precio, :disponibleproducto, :otrosabor, :imagenempresareg, :yerbamedicinal, :sabortoman, :saboredad, :cambiodeproducto, :enteroprod, :cuantoconsumo, :otroproducto, :justifprod, :recomendacion
  json.url estadistica_url(estadistica, format: :json)
end
