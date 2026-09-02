---
name: tesis-metodologia-hernandez
description: Alinea el Plan de Tesis (Ionic/Capacitor, módulo de simulación de plugins, MCP auxiliar, cobertura) con Hernández Sampieri y Mendoza Torres (2.ª ed., 2023). Usar al editar el plan .tex, objetivos, metodología o alcances.
disable-model-invocation: true
---

# Tesis: foco metodológico (Hernández Sampieri y Mendoza Torres, 2023)

## Fuente de referencia

- Libro: *Metodología de la investigación: Las rutas cuantitativa, cualitativa y mixta*, segunda edición (McGraw-Hill, 2023). Entrada BibTeX del proyecto: `sampieri2023metodologia`.

## Mapa libro ↔ documentos del plan (`Plantilla-de-Plan-de-Tesis-Jeam/contenido/`)

Usar esta tabla para **no desalinear** el texto del plan con el libro cuando el usuario pida cambios:

| Partes / capítulos centrales (libro) | Tu archivo típico | Qué debe contener (recordatorio) |
|-------------------------------------|-------------------|----------------------------------|
| Parte 1 — Cap. 1: enfoques cuantitativo/cualitativo | Introducción / Marco teórico (parcial) | Declarar **enfoque predominante** (aquí: cuantitativo con métricas). Si hay encuesta/usabilidad, mencionar complemento cualitativo o mixto sin confundir con el núcleo experimental. |
| Parte 1 — Cap. 2: nacimiento del proyecto (idea, antecedentes) | `cap_1_antecedentes`, intro | Idea del problema, **revisión previa** y por qué el tema es oportuno. |
| Parte 2 — Cap. 3: planteamiento del problema cuantitativo | `cap_2_problema_investigacion`, `cap_4_objetivos`, `cap_5_hipotesis`, `cap_3_justificacion` | **Elementos del problema**: delimitación, objetivos, preguntas, justificación, viabilidad. Precisión: **pruebas unitarias en Node con simulación de plugins Capacitor** vs integración en dispositivo. |
| Parte 2 — Cap. 4: perspectiva teórica / revisión de literatura | `cap_7_marco_teorico` | Estado del arte: `nie2023gui_mobile_mapping`, `schafer2024testpilot`, `olsthoorn2024syntest_javascript`; módulo de simulación Capacitor; MCP auxiliar; `mcp-spec2025` solo para orquestación. |
| Parte 2 — Cap. 5: alcance (exploratorio, **descriptivo**, correlacional, explicativo) | `cap_6_alcance_limitaciones` | Esta tesis se formula como **descriptivo**: se construye artefacto y se **documentan** resultados medidos (p. ej. cobertura, tiempo, pasan/no pasan tests) en el proyecto de referencia. **Limitaciones** explícitas (plugins cubiertos, sin sustituir E2E en hardware). |

Las Partes posteriores del libro (muestra, instrumentos, procedimiento de recolección, etc.) se aplican **solo donde corresponda**: aquí la “muestra” suele ser **proyectos o módulos de código**, **casos de uso** o **participantes** si hay evaluación de usabilidad — definir **operativamente** en Metodología (quién/qué, N, criterios de inclusión).

## Vocablario estable para no contradecir al jurado

- **Módulo de simulación / sustitutos integrados:** implementación en Node que reproduce respuestas de plugins `@capacitor/*` (equiv.\ a \textit{test doubles}); no es emulador del sistema operativo ni del dispositivo completo.
- **MCP:** capa de **orquestación** (herramientas que ejecutan Jest, leen cobertura, consultan Sonar, linters); no sustituye el marco teórico ni el diseño experimental.
- **Cobertura:** métrica bajo entorno de prueba definido; se interpreta junto con tests que **corren** gracias al módulo de simulación.

## Al editar `.tex` para el usuario

1. Respetar la **cadena lógica** Hernández: problema → marco → alcance → diseño metodológico → resultados esperados.
2. Si se amplía MCP o “IA”, anclar siempre en **pregunta/precisión del problema** y en **métricas reproducibles**, no en marketing.
3. Preferir citas `\cite{sampieri2023metodologia}` cuando se afirmen **tipo de investigación**, **alcance** o **elementos del planteamiento del problema** según el libro. En la portada/título usar lenguaje accesible (“simulación de APIs nativas”, “sustitutos de prueba”); en capítulos técnicos puede aclararse \textit{test doubles}.
