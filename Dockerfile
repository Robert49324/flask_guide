FROM python:3.8

# Устанавливаем рабочую директорию в контейнере
WORKDIR /app

# Копируем зависимости проекта в контейнер
COPY requirements.txt .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Копируем остальные файлы приложения в контейнер
COPY . .

# Указываем порт, на котором будет работать приложение
EXPOSE 5000

# Запускаем Flask-приложение
CMD ["python", "main.py"]

