from .models import EmpleadosLamerica

CARGOS_CON_ACCESO_SOLICITUDES = ['administrador', 'dueño', 'dueno']


def datos_usuario(request):
    empleado_id = request.session.get('empleado_id')
    es_administrador = False
    empleado_actual = None

    if empleado_id:
        empleado_actual = EmpleadosLamerica.objects.filter(id_empleado=empleado_id).first()
        if empleado_actual and empleado_actual.cargo_empleado:
            es_administrador = empleado_actual.cargo_empleado.strip().lower() in CARGOS_CON_ACCESO_SOLICITUDES

    return {
        'es_administrador': es_administrador,
        'empleado_actual': empleado_actual,
    }