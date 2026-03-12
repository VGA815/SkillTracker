# Contributing to SkillTracker

Thank you for your interest in contributing! This document explains how to participate in the project effectively.

---

## Getting Started

1. **Fork** the repository
2. **Clone** your fork locally:
   ```bash
   git clone https://github.com/VGA815/SkillTracker.git
   cd SkillTracker
   ```
3. Configure your environment as described in [README.md](README.md)
4. Create a new branch for your changes

---

## Branch Naming

Use the following prefixes:

| Type | Pattern | Example |
|---|---|---|
| New feature | `feature/short-description` | `feature/task-comments` |
| Bug fix | `fix/short-description` | `fix/login-redirect` |
| Documentation | `docs/short-description` | `docs/api-guide` |
| Refactoring | `refactor/short-description` | `refactor/auth-service` |

---

## Commit Messages

Follow [Conventional Commits](https://www.conventionalcommits.org/):

```
<type>: <short description>

[optional body]
```

**Types:** `feat`, `fix`, `docs`, `refactor`, `test`, `chore`

**Examples:**
```
feat: add task completion date field
fix: resolve redirect loop on logout
docs: update API usage examples
```

---

## Pull Requests

1. Make sure your branch is up to date with `main`
2. Run tests locally before submitting
3. Fill in the PR description template completely
4. Link the related Issue (if any)
5. Request a review from at least one maintainer

---

## Reporting Issues

Use GitHub Issues. Before opening a new one:

- Search existing issues to avoid duplicates
- Use the appropriate template (Bug / Feature Request)
- Provide as much detail as possible: steps to reproduce, expected vs actual behavior, environment info