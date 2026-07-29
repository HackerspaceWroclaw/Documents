# HSWro Documents Repository

## Handling Typst (`*.typ`) documents

Typst is an easy to use markup format that can produce nice-looking documents, comparable to LaTeX, with fraction of the work needed to be put in by the editor. You can edit its files with any text editor, its compiler is open source and commonly found in software repositories.

 * [Typst Documentation](https://typst.app/docs/), especially [styling reference](https://typst.app/docs/reference/syntax/).

### Typst new document template

```
#import "@local/hswro:0.0.1"

#show: hswro.template.with(
  document_date: datetime.today()
)

= Document title

Document contents
```

### Building the document locally

Consult https://git.hswro.org/fleg/typst-package README to see how to build the documents.

### Building using Forgejo Actions

Forgejo Actions will automatically build all `.typ` files found in this repository, compress them to a `.zip` file and provide in the job artifacts.
