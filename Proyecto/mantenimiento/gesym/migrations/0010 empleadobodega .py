import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('gesym', '0009_solicitudsoporte'),
    ]

    operations = [
        migrations.CreateModel(
            name='EmpleadoBodega',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('bodega', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='empleados_asignados', to='gesym.bodega')),
                ('empleado', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='bodegas_asignadas', to='gesym.empleadoslamerica')),
            ],
            options={
                'db_table': 'empleado_bodega',
                'unique_together': {('empleado', 'bodega')},
            },
        ),
    ]