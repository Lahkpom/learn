import 'dart:io';

import 'models/Career.dart';
import 'models/Course.dart';
import 'models/eCourseLevel.dart';
import 'models/eCourseStatus.dart';
import 'models/eCourseTerm.dart';

final Scanner = stdin;
final Printer = stdout;

void main(){
  eCourseTerm C = eCourseTerm.CUATRIMESTRAL;
  eCourseTerm A = eCourseTerm.ANUAL;

  eCourseLevel CBC = eCourseLevel.CBC;
  eCourseLevel PRIMERO = eCourseLevel.PRIMERO;
  eCourseLevel SEGUNDO = eCourseLevel.SEGUNDO;
  eCourseLevel TERCERO = eCourseLevel.TERCERO;
  eCourseLevel CUARTO = eCourseLevel.CUARTO;


  Career clothingDesign = Career('Diseño de Indumentaria');
  
  //*CBC Courses
  Course icse = Course('Introducción al Conocimiento de la Sociedad y el Estado', '24', C, CBC, status: eCourseStatus.FINALIZADO);
  Course ipc = Course('Introducción al Pensamiento Científico', '40', C, CBC, status: eCourseStatus.FINALIZADO);
  Course sem = Course('Semiología', '43', C, CBC, status: eCourseStatus.FINALIZADO);
  Course icp1 = Course('Introducción al Conocimiento Proyectual 1', '46', C, CBC, status: eCourseStatus.FINALIZADO);
  Course icp2 = Course('Introducción al Conocimiento Proyectual 2', '47', C, CBC, status: eCourseStatus.FINALIZADO);
  Course td = Course('Taller de Dibujo', '48', A, CBC, status: eCourseStatus.FINALIZADO);
  Course m = Course('Matemática', '51', C, CBC, status: eCourseStatus.FINALIZADO);

  //*PRIMER AÑO
  Course me1 = Course('Medios Expresivos 1', 'ME1', A, PRIMERO, status: eCourseStatus.FINALIZADO);
  Course ip = Course('Introducción al Proyecto', 'IP', C, PRIMERO, status: eCourseStatus.FINALIZADO);
  Course fgdm = Course('Fundamentos Geométricos del Modelaje', 'FGdM', C, PRIMERO, status: eCourseStatus.FINALIZADO);
  Course tpin1 = Course('Técnicas de Producción e Industria Nacional 1', 'TPIN1', C, PRIMERO, status: eCourseStatus.FINALIZADO);
  Course hdit1 = Course('Historia del Diseño de Indumentaria y Textil 1', 'HDIT1', C, PRIMERO, status: eCourseStatus.FINALIZADO);
  Course adit1 = Course('Análisis del Diseño de Indumentaria y Textil 1', 'ADIT1', C, PRIMERO, status: eCourseStatus.FINALIZADO);
  Course tpin2 = Course('Técnicas de Producción e Industria Nacional 2', 'TPIN2', C, PRIMERO, status: eCourseStatus.FINALIZADO);

  //*SEGUNDO AÑO
  Course me2 = Course('Medios Expresivos 2', 'ME2', A, SEGUNDO, status: eCourseStatus.FINALIZADO);
  Course pi1 = Course('Poryecto Indumentaria 1', 'PI1', A, SEGUNDO, status: eCourseStatus.FINALIZADO);
  Course mp = Course('Materialización de Poryecto', 'MP', A, SEGUNDO, status: eCourseStatus.FINALIZADO);
  Course tpi1 = Course('Técnicas de Producción de Indumentaria 1', 'TPI1', C, SEGUNDO, status: eCourseStatus.FINALIZADO);
  Course hdit2 = Course('Historia del Diseño de Indumentaria y Textil 2', 'HDIT2', C, SEGUNDO, status: eCourseStatus.FINALIZADO);
  Course adit2 = Course('Análisis del Diseño de Indumentaria y Textil 2', 'ADIT2', C, SEGUNDO, status: eCourseStatus.FINALIZADO);
  Course tpi2 = Course('Técnicas de Producción de Indumentaria 2', 'TPI2', C, SEGUNDO, status: eCourseStatus.FINALIZADO);
  
  //*TERCER AÑO
  Course pi2 = Course('Poryecto Indumentaria 2', 'PI2', C, TERCERO, status: eCourseStatus.NO_COMENZADO);
  Course cym1 = Course('Comercialización y Mercado 1', 'CyM1', C, TERCERO, status: eCourseStatus.NO_COMENZADO);
  Course s = Course('Sociología', 'S', C, TERCERO, status: eCourseStatus.FINALIZADO);
  Course tpi3 = Course('Técnicas de Producción de Indumentaria 3', 'TPI3', C, TERCERO, status: eCourseStatus.NO_COMENZADO);
  Course pi3 = Course('Poryecto Indumentaria 3', 'PI3', C, TERCERO, status: eCourseStatus.NO_COMENZADO);
  Course cym2 = Course('Comercialización y Mercado 2', 'CyM2', C, TERCERO, status: eCourseStatus.NO_COMENZADO);
  Course cyc = Course('Comunicación y Crítica', 'CyC', C, TERCERO, status: eCourseStatus.NO_COMENZADO);
  Course pa1 = Course('Proyecto de Accesorios 1', 'PA1', C, TERCERO, status: eCourseStatus.NO_COMENZADO);
  Course tpi4 = Course('Técnicas de Producción de Indumentaria 4', 'TPI4', C, TERCERO, status: eCourseStatus.NO_COMENZADO);
    
  //*CUARTO AÑO
  Course pi4 = Course('Poryecto Indumentaria 4', 'PI4', C, CUARTO, status: eCourseStatus.NO_COMENZADO);
  Course ep = Course('Ética Profesional', 'EP', C, CUARTO, status: eCourseStatus.NO_COMENZADO);
  Course pa2 = Course('Proyecto de Accesorios 2', 'PA2', C, CUARTO, status: eCourseStatus.NO_COMENZADO);
  Course mo1 = Course('Materia Optativa 1', 'MO1', C, CUARTO, status: eCourseStatus.NO_COMENZADO);
  Course mo2 = Course('Materia Optativa 2', 'MO2', C, CUARTO, status: eCourseStatus.NO_COMENZADO);
  Course tfc = Course('Trabajo Final de Carrera', 'TFC', C, CUARTO, status: eCourseStatus.NO_COMENZADO);
  Course ppa = Course('Prácticas Profesionales Asistidas', 'PPA', C, CUARTO, status: eCourseStatus.NO_COMENZADO);

  List<Course> allCourses = [icse, ipc, sem, icp1, icp2, td, m, 
                              me1, ip, fgdm, tpin1, hdit1, adit1, tpin2, 
                              me2, pi1, mp, tpi1, hdit2, adit2, tpi2,
                              pi2, cym1, s, tpi3, pi3, cym2, cyc, pa1, tpi4,
                              pi4, ep, pa2, mo1, mo2, tfc, ppa];
  
  clothingDesign.setListOfCourses = allCourses;

  //clothingDesign.showCourses();

  clothingDesign.forLevel(eCourseLevel.SEGUNDO);

}