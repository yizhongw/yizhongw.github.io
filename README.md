# Yizhong Wang's Homepage

This repository contains the source for [yizhongw.github.io](https://yizhongw.github.io/), a lightweight static academic homepage hosted with GitHub Pages.

## Updating the site

- Edit `index.html` for biography, research themes, students, news, publications, and recruiting information.
- Replace PDFs in `assets/` when the CV or research statement changes.
- Keep internal links relative and use `https://yizhongw.github.io/` as the canonical URL.
- Run `./scripts/check-site.sh` before publishing.

The canonical home is the GitHub Pages URL, so the repository intentionally does not include a `CNAME` file.

## Local preview

From the repository root, run:

```sh
python3 -m http.server 8000
```

Then open `http://localhost:8000/`.
