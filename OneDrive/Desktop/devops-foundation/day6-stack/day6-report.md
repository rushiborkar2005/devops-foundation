# Day 6 - DevOps Task

## Objective
To build and run a multi-container application using Docker Compose.

## Technologies Used
- Docker
- Docker Compose
- Flask (Python)
- Redis

## Project Description
In this project, I created a simple Flask web application that connects to a Redis database. The application counts the number of visits and displays it on the web page.

## Implementation Steps
1. Created a Flask application (app.py).
2. Added Redis to store visit count.
3. Created a Dockerfile to containerize the Flask app.
4. Used docker-compose.yml to define services:
   - Web (Flask)
   - Redis
5. Ran the application using docker-compose.

## Output
The application runs on the browser and displays:
"Hello World! I have been seen X times."

## Key Learnings
- Understanding Docker Compose
- Multi-container application setup
- Communication between containers
- Port mapping and debugging

## Challenges Faced
- Network/connection issues while pulling images
- Port confusion (5000 vs 8000)
- Debugging container logs

## Conclusion
Successfully built and executed a multi-container application using Docker Compose with Flask and Redis.