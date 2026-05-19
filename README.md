# hi-phi

Site GitHub URL: https://cameronroytaylor.github.io/hi-phi/

Site Official URL: https://hiphilab.org

## Local development

This site uses [Jekyll](https://jekyllrb.com/) with the `github-pages` gem. **Do not use macOS system Ruby** (`/usr/bin/ruby`, version 2.6) — it is too old and will fail with bundler errors.

### One-time setup

Install Ruby 3.3 (Homebrew):

```bash
brew install ruby@3.3
```

### Run the site

From the repo root:

```bash
./bin/serve
```

Open http://localhost:4000

To build without serving:

```bash
./bin/build
```

Output is written to `_site/`.

### Manual commands (optional)

If you prefer not to use the helper scripts, put Homebrew Ruby first on your `PATH`, then run bundler:

```bash
export PATH="/opt/homebrew/opt/ruby@3.3/bin:$PATH"
ruby --version   # should show 3.3.x, not 2.6.x
bundle config set --local path 'vendor/bundle'
bundle install
bundle exec jekyll serve
```

If you use [rbenv](https://github.com/rbenv/rbenv) or [mise](https://mise.jdx.dev/), the [`.ruby-version`](.ruby-version) file selects Ruby 3.3.11 automatically.

### Troubleshooting

**`Could not find 'bundler' (4.0.9)`** — You are using system Ruby’s `bundle` command. Use `./bin/serve` or add Homebrew Ruby to your `PATH` as shown above.

## Adding a publication

Edit [`_data/publications.yml`](_data/publications.yml): add a new entry under the correct `year` → `papers` list. Author highlighting uses `highlight: true` or the global list in [`_data/lab.yml`](_data/lab.yml). Use `equal_contribution: true` for † markers.

## Deploy

Push to `master` on GitHub. Pages builds Jekyll automatically; no separate build step is required.
