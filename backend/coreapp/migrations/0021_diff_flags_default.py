# Generated by Django 4.0.4 on 2022-04-13 13:48

import django.db.migrations.operations.special
from django.db import migrations, models


def diff_flags_array(apps, schema_editor):
    """
    Diff flags is a json array, but it used to be a string - let's convert empty strings to empty arrays.
    """

    Scratch = apps.get_model("coreapp", "Scratch")
    for row in Scratch.objects.all():
        if row.diff_flags == "":
            row.diff_flags = []
            row.save(update_fields=["diff_flags"])


class Migration(migrations.Migration):

    dependencies = [
        ("coreapp", "0020_diff_flags"),
    ]

    operations = [
        migrations.AlterField(
            model_name="compilerconfig",
            name="diff_flags",
            field=models.JSONField(default=list),
        ),
        migrations.AlterField(
            model_name="scratch",
            name="diff_flags",
            field=models.JSONField(default=list),
        ),
        migrations.RunPython(
            code=diff_flags_array,
            reverse_code=django.db.migrations.operations.special.RunPython.noop,
        ),
    ]
