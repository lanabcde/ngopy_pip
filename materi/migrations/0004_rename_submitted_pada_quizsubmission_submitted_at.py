# Generated by Django 5.0 on 2024-01-26 15:47

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ("materi", "0003_rename_submitted_at_quizsubmission_submitted_pada"),
    ]

    operations = [
        migrations.RenameField(
            model_name="quizsubmission",
            old_name="submitted_pada",
            new_name="submitted_at",
        ),
    ]