FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# 暴露8000端口
EXPOSE 8000

# 监听所有网卡发来的8000端口的信息
CMD ["uvicorn", "app:application", "--host", "0.0.0.0", "--port", "8000"]