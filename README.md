# HSWro Documents Repository

## Handling Typst (`*.typ`) documents

Typst is an easy to use markup format that can produce nice-looking documents, comparable to LaTeX, with fraction of the work needed to be put in by the editor. You can edit its files with any text editor, its compiler is open source and commonly found in software repositories.

 * [Typst Documentation](https://typst.app/docs/), especially [styling reference](https://typst.app/docs/reference/syntax/).

### Typst new document template

```
#import "/typst/hswro.typ"

#show: hswro.template.with(
  document_date: datetime.today()
)

= Document title

Document contents
```

### Building the document locally

In the main directory of this reporitory call:

```sh
typst compile --root (pwd) path/to/document.typ
```

#### Live preview

You can use the live preview feature which regenerates the output file each time the document is saved using the `watch` command. A convenient setup pairs this with an auto-refreshing PDF reader, for example Okular.

```sh
typst watch --root (pwd) path/to/document.typ
```

### Building using Forgejo Actions

Forgejo Actions will automatically build all `.typ` files found in this repository, compress them to a `.zip` file and provide in the job artifacts.

