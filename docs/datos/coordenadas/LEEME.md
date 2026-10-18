# Laboratorio de coordenadas

Ubicaciones ficticias con referencia urbana aproximada. El archivo correcto contiene cuatro claves únicas para combinar con DimSucursal. El archivo de errores es una tabla de diagnóstico independiente, no un catálogo para combinar con ventas. Los dos archivos usan coma como delimitador y punto decimal.

Tipos de prueba: signo, inversión, rangos, nulos, unidades UTM sin CRS completo y ceros. En particular, el caso4 pasa los rangos pero no representa Mérida. Cero cero es una coordenada geográfica válida, aunque incompatible con la sucursal mexicana del caso. El caso8 no puede transformarse correctamente sin conocer zona, hemisferio y datum.

Fuente técnica de la transformación, si ya se utiliza QGIS:
https://docs.qgis.org/3.44/en/docs/training_manual/vector_analysis/reproject_transform.html

Después de reproyectar geometría, vuelva a calcular o exportar X e Y de esa geometría; las columnas antiguas pueden conservar los valores originales.
