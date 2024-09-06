class Imagen {
  final String id;
  final String usuarioId;
  final String url;
  final String nombre;
  final DateTime fechaSubida;

  Imagen({
    required this.id,
    required this.usuarioId,
    required this.url,
    required this.nombre,
    required this.fechaSubida,
  });

  Map<String, dynamic> toJson() {
    return {
      'usuarioId': usuarioId,
      'url': url,
      'nombre': nombre,
      'fechaSubida': fechaSubida,
    };
  }
}
