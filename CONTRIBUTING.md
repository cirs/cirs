Contributor Guidelines
===
[Contributor Guidelines]: #contributor-guidelines

Thank you for showing your interest in the Cirs Project! As there are multiple
ways for contributing to the Cirs Project, it is recommended that you read
through the entire document, before contributing.

The document is split in the following major sections:

* [Feature Requests](#feature-requests)
* [Bug Reports](#bug-reports)
* [Pull Requests](#pull-requests)

If you have questions, open an issue on our [Cirs Discussions repository] or 
join the [Cirs Project Discord].

# Feature Requests
[Feature Requests]: #feature-requests

The Cirs Project is a young initiative. As such many features are expected to
be missing. To request features and changes, open an issue in the
[Cirs RFCs repository], as any changes need to go through the RFC process,
especially related to parts where the C specification leave the result to the
implementation.

# Bug Reports
[Bug Reports]: #bug-reports

Bugs, whether we like them or not, are a norm in the world of software. We
can't fix bugs that we don't know about! To report bugs, open an issue in the
[Cirs repository], or participating in an already open issue for the bug.

## Issue Template
[Issue Template]: #issue-template

When starting a new issue, Github will automatically generate a template to
help you write the bug report. The template looks like this (also available in
`.github/ISSUE_TEMPLATE.md`):

```markdown
<!--
Before reporting a bug or requesting a feature, please make sure you have as
much information as possible. Check our Contributing guidelines for more on
what we're looking for.
-->

# Summary

<!-- short summary of the bug -->

# Code

I tried this code:

<!-- code sample that causes the bug -->

## Explanation

I expected to see this happen: 

<!-- explanation -->

Instead, this happened: 

<!-- explanation -->

# Other

`rustc --version --verbose`: <!-- rustc output -->
`gcc --version`
```

Each section is important for us to figure out what went wrong. Replace the
comments (in `<!-- -->`) with relevant information.

**Please Note**: If you believe that reporting a bug publicly can be a 
security risk, it is recommended that you discuss the bug in private with Cirs
Project team on [our Discord][Cirs Project Discord].

# Pull Requests
[Pull Requests]: #pull-requests

Our primary means to get the changes implemented is through pull requests. The
[fork and pull model] is used, where a contributor push changes to their personal
"fork" of the repository and create a pull request to merge the changes in the
original repository.

## Code Style
[Code Style]: #code-style

We follow Rust formatting and naming conventions. You can read more [here]. You
can install `rustfmt` and run `cargo fmt` to help with formatting. Some things
to note:

* Line endings
    * Use Unix line endings when committing (`\n`).
    * Windows users of git can do `git config --global core.autocrlf true` to
    let git convert them automatically.

* Column width
    * 100 characters
    * Feel free to wrap when it will help with readability

* Indentation: Use 4 spaces for indentations, do not use tabs.

* Deprecation
    * Be prepared to provide justification for the deprecation.
    * When deprecating, provide the month and year when it was deprecated.

* C `enum`s, `fn`s, `struct`s, `union`s, `static`s, `const`s, `type`s: Since C standard structs have a defined standard name, they can/will
    break out of the styling rules set by rust. That is fine. Just add
    `#[allow(non_camel_case)]` on those items, as needed. This should be done
    on an individual item basis and not the whole crate or module.

## Commit Format
[Commit Format]: #commit-format

We follow a strict format for our commit message (also available in 
`.github/COMMIT_FORMAT.md`):

```ignore
<type>(<scope>): <description>

[optional body]

[optional closes]

footer
```

This is necessary as we use an automatic changelog generator that reads the
[conventional commit format] to create the changelogs.

We do impose certain limitations on top of the [conventional commit format]:

* `<type>`s that we use:
    * `bench`: Benchmarks.
    * `doc`: Updating documentation.
    * `patch`: Bug fixes.
    * `rfc`: RFC implementations.
    * `security`: A `patch` that has serious security bug fixes.
    * `test`: Unit and Integration tests.
* Various `<type>`s have different valid `<scope>`s:
    * `bench`: `path::to::function::to::benchmark`.
    * `doc`: `documented::item`
    * `patch`, `security`: `Issue number`.
    * `rfc`: `RFC number`.
    * `test`: `path::to::function::to::test`.
* The `<description>` is a short required explanation of the commit.
* For longer explanation, use the `[optional body]`
* For `patch`, `rfc` and `security` `<type>`s, the `[optional closes]` line is
  required. For others it should added only if needed.
* `footer` is required and has the committer's name and email, in the format
  `Signed by: name <email>`.
    * When committing, use the `-s` flag to automatically add the footer.

[Cirs Project Discord]: https://discord.gg/rN9urdQ
[Cirs Discussions repository]: https://github.com/cirs/discussions
[Cirs RFCs repository]: https://github.com/cirs/rfcs
[Cirs repository]: https://github.com/cirs/cirs
[fork and pull model]: https://help.github.com/articles/about-collaborative-development-models
[conventional commit format]: https://conventionalcommits.org
