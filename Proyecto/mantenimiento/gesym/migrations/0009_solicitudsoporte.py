from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('gesym', '0008_alter_producto_unique_together'),
    ]

    operations = [
        migrations.CreateModel(
            name='SolicitudSoporte',
            fields=[
                ('id_solicitud', models.AutoField(primary_key=True, serialize=False)),
                ('nombre_completo', models.CharField(max_length=100)),
                ('correo_electronico', models.CharField(max_length=100)),
                ('tipo', models.CharField(blank=True, choices=[('problema', 'Problema'), ('queja', 'Queja'), ('inquietud', 'Inquietud'), ('peticion', 'Petición')], max_length=20, null=True)),
                ('mensaje', models.TextField(blank=True, null=True)),
                ('fecha_solicitud', models.DateTimeField(blank=True, null=True)),
                ('atendida', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'solicitudes_soporte',
                'managed': False,
            },
        ),
    ]