# Bug explanation

When priv folder is manually specified to be outside priv/ but on another folder of the current project, Gettext will fail on any translation but compilers like ```mix gettext.extract``` will work correctly and output correct pot files to the configured priv folder.

# How to test
I've prepared a minimal testcase having two gettext domains, one using priv (located in lib/gettext_inside) and one using the same folder it was defined into (located in lib/gettext_outside), to test how only the priv gets a correct translation do:

```elixir
mix test
```