# Scrapeando el directorio del CJF.
Este es un breve repositorio en el que documento como scrapear la página del Consejo de la Judicatura Federal para tener todas las direcciones de los órganos jurisdiccionales que lo componen.

Problema: Las direcciones de todos los órganos jurisdiccionales se encuentran en [esta página](http://portalconsejo.cjf.gob.mx/DirOrgJuris.html) web, pero se encuentran como parte de un mapa interactivo. Necesitaba tener esa información en una tabla sencilla.

Solución: Utilicé `rvest` para scrapear el directorio. El código se encuentra en el archivo *scraping.R* y el resultado en *base.csv*.
