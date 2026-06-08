# Mi sitio personal (bilingüe)

Sitio personal hecho con [Quarto](https://quarto.org), con versión en español
e inglés.

## Estructura

```
.
├── _quarto.yml          # Configuración del sitio (navbar, sidebars, idioma)
├── index.qmd            # Inicio (español) — idioma por defecto, en la raíz
├── profesional.qmd      # Información profesional (español)
├── styles.css           # Estilos personalizados
└── en/
    ├── index.qmd        # Home (inglés)
    └── professional.qmd # Professional information (inglés)
```

El español vive en la raíz y el inglés en la carpeta `en/`. El botón
**Español / English** de la barra superior cambia entre ambas versiones.

## Ver el sitio en tu computadora

```bash
quarto preview
```

## Publicar en GitHub Pages

La forma más sencilla, una vez que el repositorio está en GitHub:

```bash
quarto publish gh-pages
```

Esto renderiza el sitio y lo sube a la rama `gh-pages`, que GitHub Pages
usará para servir tu sitio.

## Cómo agregar una pestaña nueva

1. Crea el archivo en español, p. ej. `proyectos.qmd`, y su equivalente en
   inglés en `en/projects.qmd`.
2. Agrégalos al sidebar correspondiente dentro de `_quarto.yml` (uno en la
   lista `es` y otro en la lista `en`).
