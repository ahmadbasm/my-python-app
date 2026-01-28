# 1. استخدم نسخة خفيفة من بايثون
FROM python:latest

# 2. حدد مجلد العمل داخل الحاوية
WORKDIR /app

# 3. انسخ ملف المكتبات وثبتها
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. انسخ باقي الكود
COPY . .

# 5. افتح المنفذ 5000
EXPOSE 5000

# 6. أمر تشغيل التطبيق
CMD ["python", "app.py"]