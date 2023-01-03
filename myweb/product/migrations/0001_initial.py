# Generated by Django 4.1.4 on 2022-12-31 07:58

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = []

    operations = [
        migrations.CreateModel(
            name="Goods",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("name", models.CharField(max_length=200)),
                ("price", models.IntegerField()),
                ("photo_url", models.CharField(max_length=255)),
                ("goods_url", models.CharField(max_length=255)),
                ("discount", models.FloatField()),
                ("create_date", models.DateField(auto_now_add=True)),
            ],
            options={"db_table": "goods",},
        ),
    ]
