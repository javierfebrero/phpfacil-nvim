# phpfacil-nvim

`phpfacil-nvim` es un plugin para Neovim que facilita la creación de firmas y constantes en archivos PHP mediante comandos personalizados.

## Requisitos

- [Neovim](https://neovim.io/) 0.5.0 o superior
- [Lua](https://www.lua.org/)

## Instalación

## Uso

### Comandos Disponibles

    :PhpFacilFirma {args}: Crea una firma en PHP con los argumentos proporcionados.
    :PhpFacilConstant {arg}: Crea una constante en PHP con el argumento proporcionado.

#### Ejemplos

      - Crear firma
        ```
        :PhpFacilFirma package subpackage autor mail
        ```
      - Crear Constante
        ```
        :PhpFacilConstant MY_CONSTANT
        ```

## Funciones

El plugin define dos funciones principales que se llaman a través de los comandos:

### crear_firma(args)

Genera una firma de función en PHP.

Parámetros: args (string) - Argumentos para la función PHP.
Uso: Llamado a través del comando :PhpFacilFirma.

### crear_constant(arg)

Genera una constante en PHP.

Parámetros: arg (string) - Nombre de la constante PHP.
Uso: Llamado a través del comando :PhpFacilConstant
