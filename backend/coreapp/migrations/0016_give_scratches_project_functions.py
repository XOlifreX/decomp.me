# Generated by Django 4.0.2 on 2022-02-20 15:57

import django.db.migrations.operations.special
from django.db import migrations


def assign_forks_to_projects(apps, schema_editor):
    """
    Restore forks' projects
    """
    Scratch = apps.get_model("coreapp", "Scratch")
    for row in Scratch.objects.all():
        if row.parent and row.parent.project_function:
            row.project_function = row.parent.project_function
            row.save(update_fields=["project_function"])


class Migration(migrations.Migration):

    dependencies = [
        ("coreapp", "0015_project_description"),
    ]

    operations = [
        migrations.RunPython(
            code=assign_forks_to_projects,
            reverse_code=django.db.migrations.operations.special.RunPython.noop,
        ),
    ]
