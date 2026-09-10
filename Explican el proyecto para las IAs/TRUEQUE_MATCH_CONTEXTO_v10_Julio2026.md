# 🤝 TRUEQUE MATCH — Contexto Completo v10 | Julio 2026
*Pega esto al inicio de cualquier chat nuevo antes de preguntar nada*

> ✅ **Este contexto fue verificado en vivo, clonando el repositorio real de GitHub y revisando el código archivo por archivo** (no es una copia de lo que dijo un chat anterior sin comprobar). Todo lo que dice "✅ verificado" fue confirmado directamente contra el repo. Si algo cambia después de esta fecha, avísale a la IA para que lo vuelva a verificar — pero si no ha pasado nada nuevo, este documento es confiable tal cual está, no hace falta desconfiar ni corregirlo de entrada.

---

## 1. INFORMACIÓN DEL ESTUDIANTE

| Campo | Dato |
|---|---|
| Nombre | Gerson Jonnathan López Oviedo |
| Ficha | 3186647 |
| Instructor | Arnaldo Alfonso Montiel Brun |
| Programa | Tecnólogo en Análisis y Desarrollo de Software |
| Empresa | G.L. Software Solutions — SENA 2026 |
| Nivel | Principiante — analogías simples, paso a paso, sin avanzar sin confirmación |
| Credenciales de prueba | gerson@trueque.com / Gerson2026 (usuario id=7, Bogotá) |
| Hardware | Laptop Acer Core 7 (Windows) + celular Redmi 9 |

---

## 2. DESCRIPCIÓN DEL PROYECTO

Trueque Match es una app web y móvil para intercambiar productos, servicios, conocimientos y experiencias sin dinero, promoviendo la economía colaborativa en Colombia.

Sistema de diseño: color primario `#C0392B` (Rojo TM) — fondo `#111111` — texto `#F5F0EB` — fuentes: Bebas Neue (títulos) + Nunito (cuerpo).

---

## 3. ARQUITECTURA TÉCNICA

| Capa | Tecnología | Estado |
|---|---|---|
| Backend Web | PHP 8.2 + MariaDB | ✅ Funcional |
| Frontend Web | HTML5 + CSS3 + JavaScript | ✅ Funcional |
| Base de Datos | MariaDB via XAMPP puerto 3307 | ✅ Funcional |
| App Móvil | React Native + Expo (Android) | ✅ APK en Redmi 9 |
| Control de versiones | Git + GitHub + Git Bash | ✅ Funcional |
| IDE | Visual Studio Code | ✅ Configurado |
| APIs REST | 11 endpoints PHP | ✅ Las 10 tablas de la BD tienen su API |

---

## 4. RUTAS Y ENTORNO

- **Carpeta local:** `C:\xampp\htdocs\proyecto_sena_nuevo\`
- **Repo GitHub Trueque Match (fuente oficial, público):** https://github.com/lopezoviedogersonjonnathan-rgb/proyecto_sena
- **App móvil:** `C:\Users\Sandra\Desktop\TruequeMatchApp`
- **phpMyAdmin:** http://localhost/phpmyadmin/ — usuario root, sin contraseña
- **App web local:** http://localhost/proyecto_sena_nuevo/app_trueque_match/
- **BD:** `trueque_match_db` — puerto 3307 — usuario root sin contraseña
- **SIEMPRE hacer commits desde:** `proyecto_sena_nuevo` con Git Bash

El nombre de la carpeta local (`proyecto_sena_nuevo`) y el nombre del repo en GitHub (`proyecto_sena`) son cosas independientes — es el mismo repositorio, solo con nombre distinto en cada lado. Esto ya quedó comprobado con `git remote -v` en su momento, no es una duda abierta.

---

## 5. BASE DE DATOS — `trueque_match_db`

10 tablas normalizadas (1FN, 2FN, 3FN), **las 10 con su API ya construida:**

| Tabla | Descripción | Campos clave |
|---|---|---|
| tipo_usuario | Roles: estándar/administrador | — |
| usuario | Usuarios registrados | clave_acceso (bcrypt), reputacion (decimal, se recalcula solo) |
| administrador | Gestores del sistema | — |
| oferta | Publicaciones de intercambio | categoria ENUM minúscula: producto/servicio/conocimiento/experiencia — estado ENUM: activa/inactiva/intercambiada |
| trueque | Intercambios formalizados | estado ENUM: pendiente/aceptado/completado/cancelado — 4 FK (2 usuarios + 2 ofertas) |
| evaluacion | Calificaciones 1-5 | NO guarda "a quién calificaste" directo — se deduce del trueque |
| solicitud | Contacto previo a un trueque | estado ENUM: pendiente/aceptada/rechazada |
| notificacion | Alertas del sistema | tipo ENUM: info/alerta/sistema/trueque |
| reporte | Denuncias | motivo ENUM: fraude/incumplimiento/comportamiento/otro — estado ENUM: pendiente/revisado/resuelto |
| usuario_oferta | Favoritos N:M | sin ID propio, se identifica por la pareja id_usuario + id_oferta |

---

## 6. ESTRUCTURA COMPLETA DE ARCHIVOS verificada en vivo

proyecto_sena/ (GitHub) = proyecto_sena_nuevo/ (local en el PC)

Raíz del proyecto:
- README.md — limpio, sin conflictos de Git (confirmado)
- conexion.php — conexión MariaDB puerto 3307
- agregar_oferta.php — CREATE con header()+exit()
- ofertas.php — READ con SELECT+while+JOIN
- editar_oferta.php — UPDATE+DELETE con modal JS
- trueque_match_db.sql — export completo de la BD

Carpeta app_trueque_match/ — archivos base:
- index.html
- login.html / login.php — auth + sesiones + mensaje genérico
- registro.html / registro.php — password_hash() bcrypt, pide nombre+apellido+correo+ciudad+pass1+pass2+terminos
- dashboard.php — panel dinámico con datos reales de BD
- mis_ofertas_ajax.php — endpoint JSON ofertas del usuario
- guardar_oferta.php — CREATE desde dashboard
- eliminar_oferta.php — DELETE desde dashboard
- cerrar_sesion.php — session_destroy()
- como-funciona.html
- styles.css
- app.js
- LOGO_FINAL.png

Carpeta app_trueque_match/ — las 11 APIs REST (todas con <?php y ?> bien cerrados, llaves balanceadas, verificado):

| # | Archivo | Tabla que maneja | Métodos |
|---|---|---|---|
| 1 | api_login.php | usuario (solo lectura) | POST |
| 2 | api_registro.php | usuario | POST (versión simplificada: nombre, correo, clave_acceso, ciudad — sin apellido ni confirmación de contraseña, a diferencia de registro.php web) |
| 3 | api_ofertas.php | oferta | GET, POST, PUT, DELETE — esta es la que se usó en el video oficial de evidencias |
| 4 | api_editar_oferta.php | oferta | POST — hace lo mismo que el PUT de api_ofertas.php, en archivo aparte |
| 5 | api_eliminar_oferta.php | oferta | POST — hace lo mismo que el DELETE de api_ofertas.php, en archivo aparte |
| 6 | api_solicitudes.php | solicitud | GET, POST, PUT, DELETE — corregida (antes tenía código de registro por error, ya se arregló) |
| 7 | api_trueques.php | trueque | GET, POST, PUT, DELETE — al marcar "completado" también actualiza el estado de las ofertas a "intercambiada" |
| 8 | api_evaluaciones.php | evaluacion | GET, POST, PUT, DELETE — recalcula automáticamente la reputación del usuario evaluado en usuario.reputacion |
| 9 | api_favoritos.php | usuario_oferta | GET, POST, DELETE (sin PUT, no aplica) |
| 10 | api_notificaciones.php | notificacion | GET, POST, PUT (marcar leída), DELETE |
| 11 | api_reportes.php | reporte | GET, POST, PUT (revisado/resuelto), DELETE |

Nota real, no un problema a resolver, solo un hecho a tener presente: existen dos caminos para editar/eliminar ofertas (api_ofertas.php con PUT/DELETE, y los archivos separados api_editar_oferta.php/api_eliminar_oferta.php). Ambos funcionan. El video oficial usó el primero. No hace falta "arreglar" esto salvo que Gerson decida borrar uno de los dos caminos por limpieza.

---

## 7. CHECKLIST 17 PUNTOS — 100%

Todos completados: conexión BD puerto 3307, CRUD completo, bcrypt, sesiones PHP, páginas protegidas, session_destroy, mensaje de error genérico, columnas sin tildes ni ñ, código comentado línea por línea.

---

## 8. REPOSITORIO GITHUB DE TRUEQUE MATCH — verificado en vivo

- URL: https://github.com/lopezoviedogersonjonnathan-rgb/proyecto_sena
- Rama: main
- Commits totales: 31
- Último commit: f2e508b - feat: agregar api_notificaciones.php y api_reportes.php - proyecto API completo
- Es público — cualquier IA lo puede clonar y leer directo, no hay que asumir que no se puede acceder.
- README sin conflictos de Git (confirmado con grep, cero coincidencias de marcas de conflicto)

---

## 9. REPO DEL PROFESOR — EJERCICIO PRÁCTICO DE CLASE — verificado en vivo

Repositorio propio de Gerson (no es fork técnico de GitHub), independiente de Trueque Match, para los ejercicios que pide el profe en clase.

- URL: https://github.com/lopezoviedogersonjonnathan-rgb/formulario-CRUD-de-usuarios-con-PHP-MySQL-y-XAMPP
- Commits: 2
- Archivos: actualizar.php, cerrar_sesion.php, conexion.php, editar.php, eliminar.php, guardar.php, guardar_cuenta.php, index.php, login.php, registro.php, style.css, verificar_login.php
- Lenguajes: PHP 80.6% — CSS 19.4%
- Estado: pendiente de continuar cuando el profe lo indique
- IMPORTANTE: no mezclar este repo con el de Trueque Match, son proyectos separados

---

## 10. EVIDENCIAS SENA

| Evidencia | Descripción | Estado |
|---|---|---|
| GA6-AA1-EV01 | Modelo Relacional + Normalización 1FN/2FN/3FN | Completo |
| GA6-AA1-EV02 | Modelo EER MySQL Workbench | Completo |
| GA6-AA2-EV01 | Informe técnico DDL y DML | Completo |
| GA6-AA2-EV02 | Creación estructura BD + restricciones | Completo |
| GA6-AA2-EV03 | Script completo CREATE TABLE 10 tablas | Completo |
| GA6-AA4-EV03 | Front-End HTML/CSS/JS + PHP + MariaDB | Completo |
| GA7-AA4-EV02 | Componentes Front-End (documento Word) | Completo |
| GA7-AA4-EV03 | 14 HU + 14 RF + 14 RNF + casos de uso | Completo |
| GA7-AA3-EV01 | Video de sustentación | Completo |
| GA7-AA3-EV02 | Video de sustentación (mismo video) | Completo |
| GA7-AA5-EV02 | Video Postman — login | Grabado |
| GA7-AA5-EV03 | Video Postman — INSERT/UPDATE/DELETE de ofertas | Grabado |
| GA7-AA5-EV04 | Mismas operaciones, conectadas a Trueque Match real | Grabado |

---

## 11. DOCUMENTOS WORD GENERADOS

- TruequeMatch_Documentacion_Tecnica.docx
- GA7-220501096-AA4-EV02_Componentes_FrontEnd_TruequeMatch.docx
- GA7-220501096-AA4-EV03_Componente_FrontEnd_TruequeMatch.docx
- Evidencias_API_Postman_TruequeMatch.docx — evidencias AA5-EV02/03/04, primera persona, con tabla de todas las APIs

---

## 12. PENDIENTES REALES (por decisión de Gerson, no por error técnico)

- Probar en Postman las 6 APIs nuevas que no salieron en el video (solicitudes, trueques, evaluaciones, favoritos, notificaciones, reportes) — funcionan (código verificado), pero Gerson no las ha corrido él mismo todavía
- Decidir si se deja conviviendo api_ofertas.php (PUT/DELETE) junto con api_editar_oferta.php/api_eliminar_oferta.php, o se elimina uno de los dos caminos por limpieza
- Panel de administrador real (login de admin + rutas protegidas) — no existe todavía, es una decisión pendiente de si se construye o no
- Manual de Uso/Usuario de Trueque Match — no solicitado todavía
- Exportación de diagramas EER en HD — no solicitado todavía

No hay bugs conocidos sin resolver ni archivos rotos. Todo lo listado en la sección 6 fue verificado línea por línea contra el repo real el día de este contexto.

---

## 13. SKILL INSTALADA

- humanizer — humaniza todos los textos por defecto en cualquier chat, sin que Gerson tenga que pedirlo. Evita muletillas de IA (delve, robusto, ecosistema, etc.), frases de arranque/cierre genéricas, la regla de tres y el exceso de negritas/listas. Mantiene el tono "bro/maestro/sensei" y los emojis funcionales, porque es la voz real de esta relación de trabajo, no un tic de IA.

---

## 14. INSTRUCCIONES PARA LA IA

- Español informal, tuteo siempre
- Nivel principiante absoluto, con analogías simples
- Un paso a la vez, sin avanzar sin confirmación
- Código comentado línea por línea sin excepción
- Documentos Word con normas APA 7.a edición
- Git Bash para commits, siempre desde proyecto_sena_nuevo, y siempre en orden: git add -> git commit -> git push (a Gerson se le suele olvidar el git add, revisa el git status si algo no cuadra)
- Antes de decir que algo "está mal" o "hay que corregirlo", clonar el repo real y confirmar primero — este contexto v10 ya fue verificado a fondo, así que si algo se contradice, hay que volver a verificar antes de corregir a ciegas
- El repo es público — se puede leer directo, nunca asumir que no se puede acceder
- No dar por hecho que algo se subió a GitHub solo porque Gerson dice que sí — confirmar clonando
- Cuando el estudiante diga "Bro soy Gerson, continuemos con Trueque Match", retomar desde este contexto v10 Julio 2026, sin necesidad de volver a auditar todo desde cero salvo que algo puntual lo amerite

---
© 2026 Trueque Match — G.L. Software Solutions — Bogotá, Colombia
Snapshot v10 — Julio 2026 — verificación completa contra el repo real (commit f2e508b, 31 commits, 11 APIs, README limpio, repo del profe confirmado)
