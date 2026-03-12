# SkillTracker

> A web application for automating employee professional skill development.

SkillTracker solves the problem of unstructured training by turning employee development into a transparent, measurable process. Managers set goals and track progress — employees see their tasks and mark completion.

## Tech Stack

| Layer | Technology |
|---|---|
| Database | PostgreSQL |
| Cache / Sessions | Redis |
| File Storage | MinIO |
| Email | Mailpit (dev) |
| Logging | Seq |
| Containerization | Docker + Docker Compose |

---

## Requirements

- [Docker](https://docs.docker.com/get-docker/) 24+
- [Docker Compose](https://docs.docker.com/compose/) v2.20+
- `make`

---

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/VGA815/SkillTracker.git
cd SkillTracker
```

### 2. Configure environment

```bash
cp .env.example .env
```

Open `.env` and fill in the required values (see [Environment Variables](#environment-variables) below).

### 3. Start all services

```bash
make start
```

### 4. Stop all services

```bash
# Stop containers (keeps volumes)
docker compose down

# Stop and delete all data
make clear
```

### 5. Restart from scratch

```bash
make restart
```

---

## Environment Variables

Copy `.env.example` to `.env` and fill in the values:

```env
# PostgreSQL
POSTGRES_USER=your_db_user
POSTGRES_PASSWORD=your_db_password
POSTGRES_DATABASE=skilltracker

# Redis
REDIS_PASSWORD=your_redis_password
REDIS_USER=redis
REDIS_USER_PASSWORD=your_redis_user_password

# MinIO
MINIO_ROOT_USER=your_minio_user
MINIO_ROOT_PASSWORD=your_minio_password
```

> ⚠️ Never commit `.env` to version control. It is already listed in `.gitignore`.

---

## Services & Ports

| Service | Description | Port |
|---|---|---|
| PostgreSQL | Main relational database | `5432` |
| Redis | Cache and session storage | `6379` |
| MinIO API | Object storage API | `9000` |
| MinIO Console | MinIO web UI | `9001` |
| Mailpit SMTP | Dev email server | `1025` |
| Mailpit Web UI | Inspect sent emails | `8025` |
| Seq | Structured log viewer | `8081` |

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).

## Security

See [SECURITY.md](SECURITY.md).

## License

This project is licensed under the MIT License — see [LICENSE](LICENSE) for details.