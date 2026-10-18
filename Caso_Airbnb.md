# Caso integrador del proyecto Airbnb

Abra el taller y pulse **Abrir tu proyecto integrador Airbnb**. Desde una URL publicada puede abrir docs/laboratorio.html?airbnb=1. El HTML independiente contiene también la base completa y el fondo de diseño para usar el caso sin conexión a GitHub.

## Procedencia y alcance

Se utilizaron los dos adjuntos de la usuaria: Base_Airbnb_PowerBI_Limpia.xlsx y Airbnb.zip. El ZIP contiene una página denominada Resumen Airbnb, de1920×1080, con16objetos: cinco segmentadores, cuatro tarjetas y siete visuales adicionales. Se recuperaron nombres y campos de consulta, posiciones y fondo.

El DataModel está en formato binario y no se decodificaron las expresiones DAX ni sus relaciones internas. Los resultados del taller se calculan desde el Excel adjunto; no se afirma equivalencia con una ejecución del informe en Desktop. Las expresiones y el modelo de relaciones añadidos están identificados como **propuestas didácticas**. No se modificaron los adjuntos originales.

## Datos

- Alojamientos:5,000filas, una por Listing_ID.
- Anfitriones:1,600filas, una por Anfitrion_ID;1,527de esos anfitriones tienen alojamientos en la tabla adjunta.
- Ocupacion_Mensual:60,000filas, una por alojamiento y mes, enero a diciembre de2025.

Se comprobaron unicidad de claves, correspondencias de anfitrión y consistencia de Ciudad, Tipo_Alojamiento, Precio_Noche y Calificacion repetidos en la tabla mensual. La representación compacta del navegador conserva todos los registros. Los CSV descargados desde el taller reconstruyen las nueve columnas de la tabla mensual.

## Uso del informe interactivo

1. Cambie Ciudad, Tipo_Alojamiento, Superhost, Cancelacion y Categoria_Precio. Esos cinco campos aparecen en los segmentadores del proyecto recuperado.
2. Cambie el control añadido Mes. Solo afecta los visuales de la tabla mensual; no redefine automáticamente los indicadores anuales del catálogo.
3. Compare Suma y Promedio en los visuales de precio y ocupación. Las sumas de esas columnas están en la configuración recuperada; la alternativa de promedio se propone para estudiar la definición.
4. Pulse un punto de la dispersión para inspeccionar el tipo, precio, ocupación y reservas.
5. Revise el Top10calculado dentro del contexto de filtros, ordenado por Ingreso_Mensual acumulado.

## Modelo propuesto

Anfitriones[Anfitrion_ID]1:*Alojamientos[Anfitrion_ID]. Alojamientos[Listing_ID]1:*Ocupacion_Mensual[Listing_ID]. Filtro único desde el lado uno hacia el lado varios. Puede añadirse un calendario de2025para uso temporal a nivel mensual.

Los controles de conexión del taller demuestran propagación: desconectar el catálogo de la tabla mensual hace que los visuales mensuales no reciban filtros de las propiedades del alojamiento. No altera los archivos originales ni configura una base externa.

## Definiciones que deben conservarse

Ingreso_Estimado_Anual y la suma de Ingreso_Mensual son columnas y definiciones diferentes. Sus cifras no coinciden en la base y no se forzó una conciliación. Las medidas de precio y ocupación se presentan con su agregado explícito. No se suman porcentajes como si fueran importes ni se interpreta su suma como ocupación general.

La moneda no está documentada en los archivos revisados; el símbolo$reproduce una presentación y no afirma que los importes estén en MXN. La base no contiene coordenadas de los alojamientos: no se inventaron puntos de mapa. Tampoco contiene2024para una comparación interanual.

## Diseño

La vista Diseño original usa el fondo de imagen que contiene el ZIP. Sus botones superpuestos muestran las posiciones X, Y, ancho y alto recuperadas de los16objetos. Es una referencia de distribución y no una captura de un informe ejecutado por Power BI.

## Entrega sugerida en Desktop

Reproduzca un resumen con las tres tablas, relaciones justificadas, cinco segmentadores, cuatro tarjetas y tres visuales del proyecto. Documente las medidas, muestre dos estados de filtros y explique la diferencia entre una suma y un promedio de precio u ocupación.

Rúbrica: modelo25, medidas25, visuales20, interacción15 y definiciones15puntos.

## Controles completos

Consulte docs/airbnb/controles.json. Las cifras de control se obtuvieron del Excel sin filtros. En el taller se comprobaron además filtros combinados, casos sin resultados, Top10, propagación y ámbito mensual.
