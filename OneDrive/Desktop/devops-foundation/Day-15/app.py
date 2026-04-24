from flask import Flask, Response
from prometheus_client import generate_latest, CONTENT_TYPE_LATEST, CollectorRegistry, ProcessCollector, PlatformCollector, GCCollector

app = Flask(__name__)

# Create registry and register default metrics
registry = CollectorRegistry()
ProcessCollector(registry=registry)
PlatformCollector(registry=registry)
GCCollector(registry=registry)

@app.route('/')
def home():
    return "App is running"

@app.route('/metrics')
def metrics():
    return Response(generate_latest(registry), mimetype=CONTENT_TYPE_LATEST)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=3000)