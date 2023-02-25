<h1 align="center">Sistema de Backup con archivos por lotes</h1>

## Funcionamiento

[![Juego](https://img.youtube.com/vi/ueQvWSJH3bM/0.jpg)](https://www.youtube.com/watch?v=ueQvWSJH3bM)



<p>
En este sistema se utilizan 3 archivos de procesamientos por lotes de Windoiws (.bat) que están comprimidos en un archivo Winrar autoejecutable.
  El archivo "respaldo" genera una copia local de una carpeta en una ubicación predefinida, lo guarda en una nueva carpeta agregandole un string con formato: dd/mm/aaa.</p>
  <p>Luego, el archivo "comprimir" se encarga de generar un nuevo archivo comprimido agregandole Hora actual en la carpeta "Archivos_Comprimidos", de esta manera tenemos una copia única en el sentido temporal ya que toma como nombre Fecha+Hora actual.</p>
 <p> Finalmente el archivo"limpiar" se encarga de eliminar todos los archivos generados incluyendo los .bat, esto debido a que se encuentran comprimido desntro de un archivo Winrar autoejecutable, el cual puede programarse mediante el Programador de Tareas nativo de Windows o cualquier otro.
</p>






