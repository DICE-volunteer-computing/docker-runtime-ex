FROM python:3.11-slim-bullseye

COPY src/runtime.py /runtime.py
WORKDIR /

CMD ["python", "runtime.py"]