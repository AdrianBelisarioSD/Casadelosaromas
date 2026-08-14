from decimal import Decimal, InvalidOperation

from django import template

register = template.Library()


@register.filter(name='moneda')
def moneda(valor):
    if valor is None or valor == '':
        return ''

    try:
        valor_decimal = Decimal(str(valor))
    except (InvalidOperation, TypeError, ValueError):
        # Si no se puede convertir, devolvemos el valor tal cual llego
        return valor

    # Redondeamos siempre a 2 decimales
    valor_decimal = round(valor_decimal, 2)

    # Python formatea por defecto en estilo "1,234,567.50" (coma miles, punto decimal)
    texto = f"{valor_decimal:,.2f}"

    # Intercambiamos los simbolos para pasar al formato colombiano
    texto = texto.replace(',', 'TEMP').replace('.', ',').replace('TEMP', '.')

    return texto


@register.filter(name='multiplicar')
def multiplicar(valor, factor):
    try:
        return Decimal(str(valor)) * Decimal(str(factor))
    except (InvalidOperation, TypeError, ValueError):
        return ''
