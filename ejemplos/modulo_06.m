let
    Origen = Csv.Document(
        File.Contents("C:\CURSO\Ventas.csv"),
        [Delimiter=",", Encoding=65001, QuoteStyle=QuoteStyle.Csv]
    ),
    Encabezados = Table.PromoteHeaders(Origen, [PromoteAllScalars=true]),
    Tipos = Table.TransformColumnTypes(Encabezados,
        {{"Fecha", type date}, {"Ingreso", type number}, {"Costo", type number}},
        "en-US"
    )
in
    Tipos