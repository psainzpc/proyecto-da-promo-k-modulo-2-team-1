# Proyecto MusicStream 🎶

MusicStream es un proyecto de extracción de datos de música utilizando las APIs de [Spotify](https://developer.spotify.com/), [MusicBrainz](https://musicbrainz.org/), y [Last.fm](https://www.last.fm/api). Este proyecto recolecta información sobre canciones y sus artistas para crear una base de datos centralizada, que se puede utilizar para realizar análisis, visualizaciones o desarrollar aplicaciones musicales.

## Tabla de Contenidos
1. [Características](#características)
2. [Tecnologías](#tecnologías)
3. [Requisitos de Instalación](#requisitos-de-instalación)
4. [Credenciales de APIs](#credenciales-de-apis)
5. [Estructura del Proyecto](#estructura-del-proyecto)
6. [Autoras](#autoras)

## Características

- Extracción de datos desde tres APIs de música populares.
- Limpieza y procesamiento de datos para mantener consistencia y evitar duplicados.
- Creación y estructuración de una base de datos a partir de los datos extraídos.
- Funcionalidades para realizar consultas y análisis sobre la base de datos creada.

## Tecnologías

- **Python**: lenguaje principal para la extracción, transformación y carga (ETL) de datos.
- **APIs**: Spotify, MusicBrainz, Last.fm.
- **SQL**: para la creación de la base de datos y consultas.
- **Jupyter Notebooks** (opcional): para análisis y visualización de datos en desarrollo.

## Requisitos de Instalación

1. **Python 3.8 o superior**.
2. **MySQLWorkbench**
3. **Librerias de Python**: Asegúrate de tener instaladas las siguientes bibliotecas. Puedes instalarlas usando `pip`:
     * _spotipy_: libreria de spotify
     * _requests_: librería para hacer peticiones HTTP
     * _pandas_: para la manipulación y el análisis de datos
     * _musicbrainzngs_: libreria de musicbrainz
     * _glob_: librería para buscar archivos csv

## Credenciales de APIs:
1. **[Spotify](https://developer.spotify.com/)**: Necesitas una cuenta de desarrollador en Spotify y una aplicación para obtener tu client_id y client_secret.
2. **[MusicBrainz](https://musicbrainz.org/)**: No se requiere autenticación, pero es recomendable registrar una cuenta para usar su API de manera eficiente.
3. **[Last.fm](https://www.last.fm/api)**: Necesitas una cuenta y una clave API (api_key).

## Estructura del Proyecto 
(revisar!!)

MusicStream/
- data/                   # Carpeta de archivos de datos (opcional)
- bbdd/                   # Carpeta de la base de datos
- clase_proyecto/         # Jupyter Notebooks para análisis y exploración
- CSVs/                   # CSVs con datos extraidos
  * spotify_csv         # CSVs para extracción y transformación de datos de Spotify
  * musicbrainz_csv     # CSVs  para extracción y transformación de datos de MusicBrainz
  * lastfm_csv           # CSVs  para extracción y transformación de datos de Last.fm
- main.py                 # Script principal para ejecutar el flujo completo
- README.md               # Documentación del proyecto

## Autoras
* Carmen Arazola
* Irene Alonso
* Laura Gutierrez
* Marta Hernández
* Patricia Sainz-Pardo


  
