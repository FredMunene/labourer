# Netfix

Netfix is a Django-based web application that connects service providers (companies) with customers who need various home services. Companies can register and create services in their field of expertise, while customers can browse and request these services.

## Overview

Netfix supports two types of users:

- **Companies** that create and offer services in specific fields
- **Customers** that can browse and request services

The platform supports various service categories including Plumbing, Electricity, Carpentry, and more.

## Table of Contents

- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Running the Application](#running-the-application)
  - [Running with Docker](#running-with-docker)
- [Features](#features)
- [Database Models](#database-models)
- [Contributors](#contributors)

## Getting Started

### Prerequisites

Before setting up the project, make sure you have the following installed:

- Python 3.8 or higher
- pip (Python package manager)
- Git
- Docker and Docker Compose (for Docker setup)

### Installation

1. Clone the repository:

   ```bash
   git clone https://learn.zone01kisumu.ke/git/fgitonga/netfix
   cd netfix
   ```

2. Create and activate a virtual environment:

   ```bash
   # On Windows
   python -m venv netfix
   venv\Scripts\activate

   # On macOS/Linux
   python3 -m venv netfix
   source netfix/bin/activate
   ```

3. Install the required dependencies:

   ```bash
   pip install -r requirements.txt
   ```

4. Set up the database:

   ```bash
   python3 manage.py makemigrations
   python3 manage.py migrate
   ```

5. Create a superuser (optional, for admin access):
   ```bash
   python3 manage.py createsuperuser
   ```

### Running the Application

1. Start the development server:

   ```bash
   python3 manage.py runserver
   ```

2. Access the application in your browser at `http://127.0.0.1:8000/`

3. To access the admin panel, go to `http://127.0.0.1:8000/admin/` and log in with your superuser credentials

### Running with Docker

1. Make sure you have Docker and Docker Compose installed on your system.

2. Clone the repository and navigate to the project directory:
   ```bash
   git clone https://learn.zone01kisumu.ke/git/fgitonga/netfix
   cd netfix
   ```

3. Make the run script executable:
   ```bash
   chmod +x run.sh
   ```

4. Run the application using Docker:
   ```bash
   ./run.sh
   ```
   Or alternatively:
   ```bash
   docker-compose up --build
   ```

5. The application will be available at `http://localhost:8000`

6. To stop the application, press `Ctrl+C` in the terminal where Docker is running.

7. To run the application in detached mode (in the background):
   ```bash
   docker-compose up -d
   ```

8. To stop the application when running in detached mode:
   ```bash
   docker-compose down
   ```

## Features

### User Authentication and Registration

#### Customer Registration

Customers can register by providing:

- Email (unique)
- Password and confirmation
- Username (unique)
- Date of birth

#### Company Registration

Companies can register by providing:

- Email (unique)
- Password and confirmation
- Username (unique)
- Field of work (must be one of the predefined categories)

### User Profiles

- Each user has a profile page displaying their information
- Customer profiles include a history of requested services
- Company profiles display the services they provide
- Users can view  their profile information

### Services Management

#### Service Creation (Companies only)

Companies can create services with:

- Name
- Description
- Field (limited to the company's field of work, or any field for "All in One" companies)
- Price per hour
- Creation date (automatically set)

#### Service Browsing

- Most requested services page
- All services page (ordered by creation date, newest first)
- Category-specific service pages
- Individual service detail pages

#### Service Requesting (Customers only)

Customers can request services by providing:

- Service address
- Required service time (in hours)

## Database Models

### User Models

- **CustomUser**: Base user model with email authentication
- **Customer**: User type for service requesters, includes date of birth
- **Company**: User type for service providers, includes field of work

### Service Models

- **Service**: Represents a service offered by a company
- **ServiceRequest**: Represents a customer's request for a service

## Contributors

[Allan Robinson](https://github.com/Githaiga22/)

[Fred Gitonga](https://github.com/fredmunene)
