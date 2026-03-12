# Security Policy

## Supported Versions

| Version | Supported |
|---|---|
| `main` branch | ✅ Yes |
| Older releases | ❌ No |

---

## Reporting a Vulnerability

**Please do not report security vulnerabilities through public GitHub Issues.**

If you discover a vulnerability, report it privately:

1. Go to the repository's **Security** tab
2. Click **"Report a vulnerability"**
3. Fill in the description with as much detail as possible

Alternatively, email the maintainer directly (see the GitHub profile for contact details).

### What to include

- Description of the vulnerability and its potential impact
- Steps to reproduce
- Affected component (backend, frontend, infrastructure)
- Suggested fix, if you have one

---

## Security Considerations for Self-Hosting

If you deploy SkillTracker yourself, follow these guidelines:

- **Never commit `.env`** — it is listed in `.gitignore` for a reason
- Change all default passwords before first run
- Do not expose internal ports (Redis `6379`, PostgreSQL `5432`, MinIO `9000`, Seq `8081`) to the public internet — use a reverse proxy and firewall rules
- Use strong, unique passwords for all services (`POSTGRES_PASSWORD`, `REDIS_PASSWORD`, `MINIO_ROOT_PASSWORD`)
- Rotate secrets periodically
- Keep Docker images up to date

---

## Scope

The following are **in scope** for vulnerability reports:

- Authentication and authorization bypass
- Data exposure or injection vulnerabilities (SQL, XSS, etc.)
- Insecure default configuration shipped with the project
- Privilege escalation between Manager and Employee roles

The following are **out of scope**:

- Vulnerabilities in third-party Docker images (report those upstream)
- Issues requiring physical access to the host machine
- Social engineering attacks