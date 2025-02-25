# Използваме официалния Python образ
FROM python:3.9

# Задаваме работната директория
WORKDIR /app

# Копираме файловете на приложението
COPY . .

# Инсталираме зависимостите
RUN pip install --no-cache-dir -r requirements.txt

# Задаваме порта, който ще слуша контейнера
EXPOSE 5000

# Стартираме приложението
CMD ["python", "app.py"]