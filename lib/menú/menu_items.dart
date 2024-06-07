import 'package:flutter/material.dart';

class MenuItem {
  final String titulo;
  final String subtitulo;
  final String link;
  final IconData icono;

  MenuItem(
      {required this.titulo,
      required this.subtitulo,
      required this.link,
      required this.icono});
}

final appMenuItems = <MenuItem>[
  MenuItem(
    titulo: 'Objetivos',
    subtitulo: 'Objetivos general y especificos',
    link: '/objetivos',
    icono: Icons.gps_fixed,
  ),
  MenuItem(
    titulo: 'Proposito',
    subtitulo: 'Proposito de la animación',
    link: '/proposito',
    icono: Icons.flag,
  ),
  MenuItem(
    titulo: 'Historia',
    subtitulo: 'Historia de la animación 3D',
    link: '/historia',
    icono: Icons.timelapse,
  ),
  MenuItem(
      titulo: '3D y 2D',
      subtitulo: 'Diferencias entre el 3D y el 2D',
      link: '/diferencia',
      icono: Icons.difference),
  MenuItem(
      titulo: 'Principios',
      subtitulo: '12 principios de la animación',
      link: '/principios',
      icono: Icons.animation),
  MenuItem(
      titulo: 'Proceso',
      subtitulo: 'Proceso de animación',
      link: '/proceso',
      icono: Icons.list_alt),
  MenuItem(
      titulo: 'Herramientas',
      subtitulo: 'Herramientas para animar',
      link: '/herramientas',
      icono: Icons.build),
  MenuItem(
      titulo: 'Actividad',
      subtitulo: 'Actividad del OVA',
      link: '/actividad',
      icono: Icons.task),
];
