# DomainNest

**DomainNest** is a multi-tenant application built with Rails 7.2. It allows you to create and manage multiple tenants (subdomains) with shared schema (row-level multi-tenancy). The project utilizes Devise for authentication, dynamic tenant-based registration, and Rails Admin for tenant management. It also leverages the latest Rails 7.2 features, such as GitHub CI, Docker containers, and Progressive Web Applications (PWA).

## Features

- Multi-tenancy using subdomains (`tenant1.myapp.com`, `tenant2.myapp.com`, etc.)
- Dynamic landing pages for tenants and a base page if accessed without a tenant.
- User authentication using Devise with tenant-specific logins.
- Rails Admin for tenant management (add, remove, update tenants).
- GitHub CI workflow for continuous integration.
- Docker configuration with optimized memory allocation using jemalloc.
- PWA configuration included by default.

---

## Getting Started

Follow these instructions to get the **DomainNest** project up and running on your local machine.

### Prerequisites

Ensure you have the following installed on your system:

- **Ruby 3.3.0**
- **Rails 7.2.0**
- **MySQL** (or adjust for PostgreSQL if preferred)
- **Docker** (for containerization)
- **Node.js** and **Yarn** (for asset pipeline)
- **Git** (for version control)

### 1. Clone the Repository

Clone the project repository from GitHub to your local machine:

```bash
git clone https://github.com/yourusername/DomainNest.git
cd DomainNest
