# 📦 WordPress Docker Setup

Welcome to the WordPress Docker Setup project! This guide will help you get started with setting up a WordPress environment using Docker. Follow the steps below to get your WordPress site up and running in no time.

## 🚀 Prerequisites

Before you begin, ensure you have the following installed on your machine:

- **Docker**: [Install Docker](https://docs.docker.com/get-docker/)
- **Docker Compose**: [Install Docker Compose](https://docs.docker.com/compose/install/)

## 📂 Project Structure

Here's a quick overview of the project structure:

```plaintext
├── nginx-conf/ 
│ └── nginx.conf 
├── .env 
├── compose.yml 
├── configure_wordpress.sh 
├── Makefile 
└── README.md
```

## 🛠️ Setup Instructions

Follow these steps to set up the project:

1. **Clone the repository**:
    ```sh
    git clone https://github.com/duffman033/WordPress-Docker-Setup.git
    cd WordPress-Docker-Setup
    ```

2. **Configure environment variables**:
    - Edit the `.env` file to set your MySQL credentials.

3. **Run the setup**:
    ```sh
    make setup
    ```

> **Note**: You may be prompted to enter your `sudo` password during the setup process to adjust file permissions.

   This command will:
    - Start the Docker containers.
    - Execute the `configure_wordpress.sh` script to configure WordPress.
    - Adjust file permissions.

4. **Access your WordPress site**:
    - Open your browser and navigate to `http://localhost:8080`.

## 📜 Makefile Commands

- **Setup**: Initialize and configure the project.
    ```sh
    make setup
    ```

- **Start**: Start the Docker containers.
    ```sh
    make start
    ```

- **Stop**: Stop the Docker containers.
    ```sh
    make stop
    ```

## 📄 Configuration Details

### Docker Compose

The `compose.yml` file defines the services required for the project:

- **db**: MySQL database service.
- **wordpress**: WordPress service.
- **webserver**: Nginx web server.
- **mailhog**: MailHog service for email testing.

### Nginx Configuration

The `nginx-conf/nginx.conf` file configures Nginx to serve the WordPress site.

### WordPress Configuration

The `configure_wordpress.sh` script configures WordPress to use MailHog for SMTP.

## 📝 Additional Information

- **WordPress Admin**: Access the WordPress admin panel at `http://localhost:8080/wp-admin`.
- **MailHog**: Access MailHog's web interface at `http://localhost:8025`.

## 📧 Support

If you encounter any issues or have questions, feel free to open an issue on the repository or reach out to the community for help.

Happy coding! 🎉