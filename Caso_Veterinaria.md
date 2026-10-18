# Proyecto 20 · Veterinaria

Abre docs/laboratorio.html y pulsa **Abrir tu proyecto de veterinaria**. También está integrado en Taller_Visual_Power_BI.html, sin instalación.

## Procedencia y alcance

Se utilizan las 150 filas completas de la hoja Data de Datosveterinaria.xlsx. DATOS_VETERINARIA.zip permite recuperar una página de 1920×1080 y 15 objetos: cuatro formas, tarjeta de suma, texto, donut, línea, tres barras y cuatro filtros. Se reproducen campos y coordenadas en un esquema seleccionable. La interfaz web adapta el diseño; no es una captura de Power BI.

El DataModel binario no se decodificó. La tabla TablaMeses referenciada en los visuales no está en el Excel. El calendario, relaciones y medidas explícitas que se enseñan son propuestas, no expresiones recuperadas. El original usa suma implícita de Monto pagado.

## Controles

- 150 registros de servicio; no se pueden afirmar pacientes únicos sin una clave.
- Suma: 15,893,493. Ticket medio: 105,956.62.
- Fechas: 2024-01-06 a 2024-12-03.
- Moneda no documentada; el símbolo $ es presentación.
- Esterilizado: 77 valores Sí con U+00AD y 73 No. Se limpia solo al mostrar y filtrar; el CSV y el Excel conservan originales.

## Actividad guiada

1. Inspecciona las 12 columnas en Datos y descarga el CSV.
2. Aplica Tratamiento y observa el nuevo contexto.
3. Combina Servicio recibido y comprueba ingresos y ticket.
4. Selecciona mes; revisa el eje cronológico de 2024.
5. Compara suma de importes contra conteo de servicios: el denominador del donut cambia.
6. Revisa Calendario 1 → * Data y dirección única. Ordena Mes por MesNumero.
7. Crea Ingresos = SUM(Data[Monto pagado]), Servicios = COUNTROWS(Data) y Ticket medio = DIVIDE([Ingresos], [Servicios]).
8. Selecciona un visual en Diseño; copia X, Y, ancho y alto a sus propiedades en Desktop.

## Preguntas que requieren probar

¿Por qué el donut por importe no representa porcentaje de animales esterilizados? ¿Qué riesgo hay al relacionar categorías con caracteres invisibles? ¿Por qué contar nombres no garantiza pacientes únicos? ¿Por qué ordenar Mes alfabéticamente rompe la secuencia? ¿Qué relación necesitarías si agregas un catálogo con clave única de paciente?

## Entrega

Cuatro filtros, línea temporal, donut, comparaciones por animal, médico y servicio, tres medidas explícitas, calendario y limpieza documentada. Añade una captura de coordenadas y explica el denominador de cada indicador. Rúbrica: modelo25, DAX25, visuales20, interacción15, explicación15.

Se conserva el caso Airbnb y todos los proyectos previos. No se extraen conclusiones clínicas ni se inventan coordenadas geográficas.
