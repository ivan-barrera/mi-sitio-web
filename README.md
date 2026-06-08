# Mi sitio personal (bilingüe)

Sitio personal hecho con [Quarto](https://quarto.org), con versión en español
e inglés. Las páginas aparecen como pestañas en la barra de navegación y el
idioma se elige con un ícono desplegable en la esquina superior derecha.

## Estructura

```
.
├── _quarto.yml          # Config. base (solo tipo de proyecto y formato)
├── _quarto-es.yml       # Perfil ESPAÑOL (navbar completo en español)
├── _quarto-en.yml       # Perfil INGLÉS (navbar completo en inglés)
├── index.qmd            # Inicio (español)
├── profesional.qmd      # Información profesional (español)
├── styles.css           # Estilos personalizados
├── build.sh             # Compila ambos idiomas de una vez (mac/Linux)
└── en/
    ├── index.qmd        # Home (inglés)
    └── professional.qmd # Professional information (inglés)
```

## Por qué hay dos archivos de configuración

Quarto usa **una sola barra de navegación por compilación**. Para que las
pestañas estén traducidas en cada idioma, cada idioma se compila con su propio
"perfil": `_quarto-es.yml` para español y `_quarto-en.yml` para inglés. Cada
perfil define su **navbar completo** (pestañas + menú de idioma). El archivo
base `_quarto.yml` solo guarda el tipo de proyecto y el formato, sin nada de
`website`/`navbar`: si se reparte el navbar entre el base y los perfiles, Quarto
mezcla mal las listas (duplica o pierde pestañas).

## Ver el sitio mientras lo editas

```bash
quarto preview --profile es    # versión en español
quarto preview --profile en    # versión en inglés
```

(En la vista previa solo se ve un idioma a la vez; el cambio de idioma con el
ícono funciona en el sitio ya compilado completo.)

## Compilar el sitio completo (ambos idiomas)

```bash
quarto render --profile es     # español
quarto render --profile en     # inglés
```

O simplemente, en mac/Linux:

```bash
./build.sh
```

Esto deja el sitio completo en la carpeta `_site/`. Para verlo localmente:

```bash
cd _site && python3 -m http.server 8000   # luego abre http://localhost:8000
```

## Publicar en GitHub Pages

Como hay que compilar los dos idiomas antes de subir, usa `--no-render` para
que publique el `_site/` ya generado:

```bash
./build.sh                              # (o los dos 'quarto render')
quarto publish gh-pages --no-render
```

## Cómo agregar una pestaña nueva

1. Crea el archivo en español, p. ej. `proyectos.qmd`, y su equivalente en
   inglés en `en/projects.qmd`.
2. Agrégalos a la lista `navbar > left` en **ambos** perfiles:
   en `_quarto-es.yml` (español) y en `_quarto-en.yml` (inglés).
3. Añádelos también a `project > render` en su archivo correspondiente.
