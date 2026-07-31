# Contributing

Thanks for helping improve zimablue.nvim.

## Local Checks

Run the spec suite before opening a pull request:

```sh
nvim --headless -u NONE -l tests/minit.lua
```

Run the smoke test as a quick loading check:

```sh
nvim --headless -u NONE -l tests/smoke.lua
```

If you change colors in `lua/zimablue/colors.lua`, regenerate extras and verify they are up to date:

```sh
nvim --headless -u NONE -l scripts/generate_extras.lua
nvim --headless -u NONE -l scripts/generate_extras.lua --check
```

If you update help docs, verify helptags:

```sh
nvim --headless -u NONE --cmd 'set rtp+=.' --cmd 'helptags doc' --cmd 'qa!'
```

## Highlight Guidelines

- Keep colors palette-driven. Add semantic color fields in `lua/zimablue/colors.lua` when a color needs to be reused.
- Prefer existing palette names over raw hex values in highlight modules.
- Keep plugin-specific highlights focused on real plugin group names.
- Update `README.md` and `doc/zimablue.txt` when changing public configuration options.

## Extras Guidelines

Extras are generated from `scripts/generate_extras.lua`. Do not edit files under `extras/` by hand unless you also update the generator and `tests/extras_spec.lua`.
