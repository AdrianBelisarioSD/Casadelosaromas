
from django.db import models


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class BodegaLamerica(models.Model):
    id_bodega = models.IntegerField(db_column='Id_bodega', primary_key=True)  # Field name made lowercase.
    ubicacion = models.CharField(db_column='Ubicacion', max_length=100)  # Field name made lowercase.
    capacidad_de_productos = models.IntegerField(db_column='Capacidad_de_productos')  # Field name made lowercase.
    productos = models.IntegerField(db_column='Productos')  # Field name made lowercase.
    nombre_de_encargado = models.CharField(db_column='Nombre_de_encargado', max_length=100)  # Field name made lowercase.
    id_empleado = models.IntegerField(db_column='Id_empleado')  # Field name made lowercase.
    id_pedido = models.ForeignKey('PedidosEnProceso', models.DO_NOTHING, db_column='Id_pedido')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'bodega_lamerica'


class ClientesDeLamerica(models.Model):
    id_usuario = models.IntegerField(db_column='Id_usuario', primary_key=True)  # Field name made lowercase.
    nombre_de_clinte = models.CharField(db_column='Nombre_de_clinte', max_length=100, blank=True, null=True)  # Field name made lowercase.
    numero_telefonico = models.CharField(db_column='Numero_telefonico', max_length=20, blank=True, null=True)  # Field name made lowercase.
    correo_electronico = models.CharField(db_column='Correo_electronico', max_length=50, blank=True, null=True)  # Field name made lowercase.
    direccion = models.CharField(db_column='Direccion', max_length=100, blank=True, null=True)  # Field name made lowercase.
    fecha_de_nacimiento = models.DateField(db_column='Fecha_de_nacimiento', blank=True, null=True)  # Field name made lowercase.
    productos_que_compra = models.CharField(db_column='Productos_que_compra', max_length=500, blank=True, null=True)  # Field name made lowercase.
    cantidad_de_productos = models.IntegerField(db_column='Cantidad_De_productos', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'clientes_de_lamerica'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class EmpleadosLamerica(models.Model):
    id_empleado = models.AutoField(db_column='Id_empleado', primary_key=True)  # Field name made lowercase.
    cargo_empleado = models.CharField(db_column='Cargo_empleado', max_length=50, blank=True, null=True)  # Field name made lowercase.
    nombre_empleado = models.CharField(db_column='Nombre_empleado', max_length=50, blank=True, null=True)  # Field name made lowercase.
    apellido_empleado = models.CharField(db_column='Apellido_empleado', max_length=50, blank=True, null=True)  # Field name made lowercase.
    correo_de_empleado = models.CharField(db_column='Correo_de_empleado', max_length=50, blank=True, null=True)  # Field name made lowercase.
    direccion_empleado = models.CharField(db_column='Direccion_empleado', max_length=50, blank=True, null=True)  # Field name made lowercase.
    id_bodega = models.IntegerField(db_column='Id_bodega', blank=True, null=True)  # Field name made lowercase.
    ubicacion_de_bodega = models.CharField(db_column='Ubicacion_de_bodega', max_length=50, blank=True, null=True)  # Field name made lowercase.
    documento_de_identidad = models.IntegerField(db_column='Documento_De_identidad')  # Field name made lowercase.
    contrasena = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'empleados_lamerica'


class EnviosLamerica(models.Model):
    id_envio = models.OneToOneField('VentasDeLamerica', models.DO_NOTHING, db_column='Id_envio', primary_key=True)  # Field name made lowercase.
    fecha_envio = models.DateField(db_column='Fecha_envio', blank=True, null=True)  # Field name made lowercase.
    numero_de_guia = models.IntegerField(db_column='Numero_de_guia', blank=True, null=True)  # Field name made lowercase.
    ciudad_de_salida = models.CharField(db_column='Ciudad_de_salida', max_length=100, blank=True, null=True)  # Field name made lowercase.
    ciudad_de_destino = models.CharField(db_column='Ciudad_de_destino', max_length=100, blank=True, null=True)  # Field name made lowercase.
    id_venta = models.IntegerField(db_column='Id_venta', blank=True, null=True)  # Field name made lowercase.
    id_pedido = models.IntegerField(db_column='Id_pedido', blank=True, null=True)  # Field name made lowercase.
    empresa_de_transporte = models.CharField(db_column='Empresa_de_transporte', max_length=100, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'envios_lamerica'


class InventarioDeLamerica(models.Model):
    id_inventario = models.IntegerField(db_column='Id_inventario', primary_key=True)  # Field name made lowercase.
    id_pedidos = models.ForeignKey(BodegaLamerica, models.DO_NOTHING, db_column='Id_pedidos', blank=True, null=True)  # Field name made lowercase.
    id_productos = models.IntegerField(db_column='Id_productos', blank=True, null=True)  # Field name made lowercase.
    numero_de_productos = models.IntegerField(db_column='Numero_de_productos', blank=True, null=True)  # Field name made lowercase.
    fecha_de_ingreso_de_productos = models.DateField(db_column='Fecha_de_ingreso_de_productos', blank=True, null=True)  # Field name made lowercase.
    fecha_de_vencimiento_de_productos = models.DateField(db_column='Fecha_de_vencimiento_de_productos', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'inventario_de_lamerica'


class PedidosEnProceso(models.Model):
    id_pedido = models.IntegerField(db_column='Id_pedido', primary_key=True)  # Field name made lowercase.
    id_usuario = models.ForeignKey(ClientesDeLamerica, models.DO_NOTHING, db_column='Id_usuario', blank=True, null=True)  # Field name made lowercase.
    fecha_de_pedido = models.DateField(db_column='Fecha_de_pedido', blank=True, null=True)  # Field name made lowercase.
    estado_de_pedido = models.CharField(db_column='Estado_de_pedido', max_length=50, blank=True, null=True)  # Field name made lowercase.
    detalles_de_pedido = models.CharField(db_column='Detalles_de_pedido', max_length=200, blank=True, null=True)  # Field name made lowercase.
    costo_pedido = models.DecimalField(db_column='Costo_pedido', max_digits=10, decimal_places=2, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'pedidos_en_proceso'


class ProveedoresLamerica(models.Model):
    id_proveedor = models.IntegerField(db_column='Id_proveedor', primary_key=True)  # Field name made lowercase.
    nombre_proveedor = models.CharField(db_column='Nombre_proveedor', max_length=100, blank=True, null=True)  # Field name made lowercase.
    telefono = models.CharField(db_column='Telefono', max_length=20, blank=True, null=True)  # Field name made lowercase.
    ubicacion_proveedor = models.CharField(db_column='Ubicacion_proveedor', max_length=100, blank=True, null=True)  # Field name made lowercase.
    productos = models.IntegerField(db_column='Productos', blank=True, null=True)  # Field name made lowercase.
    id_productos = models.ForeignKey(InventarioDeLamerica, models.DO_NOTHING, db_column='Id_productos', blank=True, null=True)  # Field name made lowercase.
    precio_productos = models.DecimalField(db_column='Precio_productos', max_digits=10, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    id_pedido = models.ForeignKey('PedidosEnProceso', models.DO_NOTHING, db_column='Id_pedido', blank=True, null=True)  # Field name made lowercase.
    class Meta:
        managed = False
        db_table = 'proveedores_lamerica'


class SolicitudesAcceso(models.Model):
    id_solicitud = models.AutoField(primary_key=True)
    nombre_completo = models.CharField(max_length=100)
    documento_identidad = models.CharField(max_length=20)
    numero_empleado = models.CharField(max_length=20)
    correo_electronico = models.CharField(max_length=100)
    cargo = models.CharField(max_length=100, blank=True, null=True)
    mensaje = models.TextField(blank=True, null=True)
    fecha_solicitud = models.DateTimeField(auto_now_add=True, blank=True, null=True)
    atendida = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'solicitudes_acceso'
class SolicitudSoporte(models.Model):
    TIPO_PROBLEMA = 'problema'
    TIPO_QUEJA = 'queja'
    TIPO_INQUIETUD = 'inquietud'
    TIPO_PETICION = 'peticion'
    TIPO_CHOICES = [
        (TIPO_PROBLEMA, 'Problema'),
        (TIPO_QUEJA, 'Queja'),
        (TIPO_INQUIETUD, 'Inquietud'),
        (TIPO_PETICION, 'Petición'),
    ]

    id_solicitud = models.AutoField(primary_key=True)
    nombre_completo = models.CharField(max_length=100)
    correo_electronico = models.CharField(max_length=100)
    tipo = models.CharField(max_length=20, choices=TIPO_CHOICES, blank=True, null=True)
    mensaje = models.TextField(blank=True, null=True)
    fecha_solicitud = models.DateTimeField(blank=True, null=True)
    atendida = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'solicitudes_soporte'


class VentasDeLamerica(models.Model):
    id_venta = models.IntegerField(db_column='Id_venta', primary_key=True)  # Field name made lowercase.
    id_usuario = models.IntegerField(db_column='Id_usuario', blank=True, null=True)  # Field name made lowercase.
    id_pedido = models.ForeignKey(PedidosEnProceso, models.DO_NOTHING, db_column='Id_pedido', blank=True, null=True)  # Field name made lowercase.
    id_bodega = models.IntegerField(db_column='Id_Bodega', blank=True, null=True)  # Field name made lowercase.
    id_inventario = models.IntegerField(db_column='Id_inventario', blank=True, null=True)  # Field name made lowercase.
    costo_pedido = models.DecimalField(db_column='Costo_pedido', max_digits=10, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    metodo_pago = models.CharField(db_column='Metodo_pago', max_length=100, blank=True, null=True)  # Field name made lowercase.
    id_pago = models.IntegerField(db_column='Id_pago', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ventas_de_lamerica'
        
class Bodega(models.Model):
    nombre = models.CharField(max_length=100)
    ubicacion = models.CharField(max_length=150, blank=True)
    encargado = models.CharField(max_length=100, blank=True)
    activa = models.BooleanField(default=True)
    fecha_creacion = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.nombre

class EmpleadoBodega(models.Model):
    empleado = models.ForeignKey(EmpleadosLamerica, on_delete=models.CASCADE, related_name='bodegas_asignadas')
    bodega = models.ForeignKey(Bodega, on_delete=models.CASCADE, related_name='empleados_asignados')

    class Meta:
        managed = True
        db_table = 'empleado_bodega'
        unique_together = (('empleado', 'bodega'),)

class Producto(models.Model):
    TIPO_INGRESO_CHOICES = [
        ('unidad', 'Unidad'),
        ('bandeja', 'Bandeja'),
    ]

    activo = models.BooleanField(default=True)
    bodega = models.ForeignKey(Bodega, on_delete=models.CASCADE, related_name='productos', null=True, blank=True)
    codigo = models.CharField(max_length=20, unique=True)
    nombre = models.CharField(max_length=150)
    marca = models.CharField(max_length=100, blank=True)
    categoria = models.CharField(max_length=100, blank=True)
    cantidad = models.IntegerField(default=0)
    precio = models.DecimalField(max_digits=10, decimal_places=2, default=0)
    descripcion = models.TextField(blank=True)
    stock_minimo = models.IntegerField(default=10)
    tipo_ingreso = models.CharField(max_length=10, choices=TIPO_INGRESO_CHOICES, default='unidad')
    fecha_creacion = models.DateTimeField(auto_now_add=True)
    tipo_ingreso = models.CharField(max_length=10, choices=TIPO_INGRESO_CHOICES, default='unidad')
    unidades_por_bandeja = models.IntegerField(null=True, blank=True)
    numero_bandejas = models.IntegerField(null=True, blank=True)
    unidades_por_caja = models.IntegerField(null=True, blank=True)
    precio_caja = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    fecha_creacion = models.DateTimeField(auto_now_add=True)

    class Meta:
        unique_together = ('bodega', 'codigo')

    @property
    def valor_total(self):
        return self.cantidad * self.precio

    def __str__(self):
        return self.nombre
    
class Cliente(models.Model):
    bodega = models.ForeignKey(Bodega, on_delete=models.CASCADE, related_name='clientes', null=True, blank=True)
    nombre_completo = models.CharField(max_length=150)
    correo = models.EmailField(blank=True)
    telefono = models.CharField(max_length=20, blank=True)
    direccion = models.CharField(max_length=200, blank=True)

    def __str__(self):
        return self.nombre_completo


class Venta(models.Model):
    METODOS_PAGO = [
        ('Efectivo', 'Efectivo'),
        ('Tarjeta', 'Tarjeta'),
        ('Transferencia', 'Transferencia'),
    ]

    cliente = models.ForeignKey(Cliente, on_delete=models.CASCADE, related_name='ventas')
    fecha_venta = models.DateField()
    metodo_pago = models.CharField(max_length=20, choices=METODOS_PAGO, default='Efectivo')
    notas = models.TextField(blank=True)
    fecha_creacion = models.DateTimeField(auto_now_add=True)

    @property
    def total_venta(self):
        return sum(d.subtotal for d in self.detalles.all())

    @property
    def total_productos(self):
        return self.detalles.count()

    @property
    def total_unidades(self):
        return sum(d.cantidad for d in self.detalles.all())

    @property
    def detalles_para_js(self):
        import json
        return json.dumps([
            {
                'id': d.producto_id,
                'nombre': d.nombre_producto,
                'codigo': d.codigo_producto,
                'cantidad': d.cantidad,
                'precio': float(d.precio_unitario),
            } for d in self.detalles.all()
        ])

    def __str__(self):
        return f"Venta {self.id}"


class DetalleVenta(models.Model):
    venta = models.ForeignKey(Venta, on_delete=models.CASCADE, related_name='detalles')
    producto = models.ForeignKey(Producto, on_delete=models.SET_NULL, null=True, blank=True)
    nombre_producto = models.CharField(max_length=150)
    codigo_producto = models.CharField(max_length=20, blank=True)
    cantidad = models.IntegerField(default=1)
    precio_unitario = models.DecimalField(max_digits=10, decimal_places=2, default=0)

    @property
    def subtotal(self):
        return self.cantidad * self.precio_unitario
    
    
class Movimiento(models.Model):
    TIPOS = [
        ('Entrada', 'Entrada'),
        ('Salida', 'Salida'),
        ('Ajuste de inventario', 'Ajuste de inventario'),
    ]
    bodega = models.ForeignKey(Bodega, on_delete=models.SET_NULL, null=True, blank=True, related_name='movimientos') 
    producto = models.ForeignKey(Producto, on_delete=models.SET_NULL, null=True)
    nombre_producto = models.CharField(max_length=150)
    codigo_producto = models.CharField(max_length=20, blank=True)
    tipo = models.CharField(max_length=30, choices=TIPOS)
    motivo = models.CharField(max_length=100, blank=True)  # "Venta", "Ingreso de compras", "Ajuste de inventario"
    cantidad = models.IntegerField()  # positivo (+20) o negativo (-10)
    usuario_nombre = models.CharField(max_length=100, blank=True)
    fecha = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.tipo} - {self.nombre_producto}"
    
class Compra(models.Model):
    ESTADOS = [
        ('Pagado', 'Pagado'),
        ('Pendiente', 'Pendiente'),
    ]
    numero = models.CharField(max_length=20)
    proveedor = models.CharField(max_length=150)
    fecha = models.DateField()
    estado = models.CharField(max_length=20, choices=ESTADOS, default='Pendiente')
    impuestos = models.DecimalField(max_digits=10, decimal_places=2, default=0)
    observaciones = models.TextField(blank=True)
    firma_comprador = models.CharField(max_length=150, blank=True)
    firma_proveedor = models.CharField(max_length=150, blank=True)

    @property
    def subtotal(self):
        return sum(item.subtotal for item in self.items.all())

    @property
    def total(self):
        return self.subtotal + self.impuestos

    def __str__(self):
        return f'{self.numero} - {self.proveedor}'


class DetalleCompra(models.Model):
    compra = models.ForeignKey(Compra, related_name='items', on_delete=models.CASCADE)
    producto_nombre = models.CharField(max_length=150)
    cantidad = models.IntegerField()
    precio_unitario = models.DecimalField(max_digits=10, decimal_places=2)

    @property
    def subtotal(self):
        return self.cantidad * self.precio_unitario
    
    
class Proveedor(models.Model):
    nombre = models.CharField(max_length=150)
    telefono = models.CharField(max_length=20, blank=True)
    correo = models.EmailField(blank=True)
    direccion = models.CharField(max_length=200, blank=True)

    def __str__(self):
        return self.nombre


class OrdenCompra(models.Model):
    ESTADOS = [('Pagado', 'Pagado'), ('Pendiente', 'Pendiente')]

    numero = models.CharField(max_length=20, blank=True)
    proveedor = models.ForeignKey(Proveedor, on_delete=models.CASCADE, related_name='ordenes')
    fecha = models.DateField()
    estado = models.CharField(max_length=20, choices=ESTADOS, default='Pendiente')
    impuestos = models.DecimalField(max_digits=10, decimal_places=2, default=0)
    observaciones = models.TextField(blank=True)
    usuario_nombre = models.CharField(max_length=100, blank=True)
    fecha_creacion = models.DateTimeField(auto_now_add=True)

    @property
    def subtotal(self):
        return sum(d.subtotal for d in self.detalles.all())

    @property
    def total(self):
        return self.subtotal + self.impuestos

    @property
    def productos_texto(self):
        return ", ".join(d.nombre_producto for d in self.detalles.all())

    @property
    def detalles_para_js(self):
        import json
        return json.dumps([
            {
                'nombre': d.nombre_producto,
                'cantidad': d.cantidad,
                'precio': float(d.precio_unitario),
                'subtotal': float(d.subtotal),
            } for d in self.detalles.all()
        ])

    def __str__(self):
        return f"Orden {self.numero}"


class DetalleOrdenCompra(models.Model):
    orden = models.ForeignKey(OrdenCompra, on_delete=models.CASCADE, related_name='detalles')
    producto = models.ForeignKey(Producto, on_delete=models.SET_NULL, null=True, blank=True)
    nombre_producto = models.CharField(max_length=150)
    cantidad = models.IntegerField(default=1)
    precio_unitario = models.DecimalField(max_digits=10, decimal_places=2, default=0)

    @property
    def subtotal(self):
        return self.cantidad * self.precio_unitario