---
name: humanizar-plan-tesis
description: Humaniza redacción académica en español para el plan de tesis LaTeX (UNSAAC/EPIIS)—ritmo natural, menos tono plantilla o IA, preservando citas BibTeX y precisión técnica. Usar al editar Plantilla-de-Plan-de-Tesis-Jeam/contenido/*.tex, introducción, objetivos, hipótesis o cuando el usuario pida texto más humano, menos robótico o alineado a la guía de elaboración del plan.
disable-model-invocation: true
---

# Humanizar redacción del plan de tesis

## Objetivo

Al editar capítulos `.tex` del plan, producir prosa **clara, creíble y legible ante jurado**, sin sonar a plantilla genérica ni a lista de viñetas encadenadas. El trabajo sigue siendo **académico** (no coloquial extremo).

## Inviolable: no modificar sin pedirlo explícito

- Claves `\cite{...}` y contenido entre llaves de `\cite`; entradas `.bib`.
- URLs en `\url{...}` o rutas de archivos.
- Nombres de herramientas y APIs: Capacitor, Ionic, Jest, Jasmine, Istanbul, MCP, Sonar, `@capacitor/*`, comandos y paquetes.
- Estructura numérica del documento (`\chapter`, etiquetas `\label`) salvo que el usuario pida reorganizar.
- Datos numéricos o compromisos cuantitativos: no inventar porcentajes ni “mejoras” sin línea base; si el texto es vago, proponer redacción prudente (p. ej. “tras medición” en lugar de cifras fabricadas).

## Principios de humanización

1. **Alternar longitud de oraciones:** mezclar frases cortas con párrafos explicativos; evitar cinco líneas seguidas con la misma estructura sintáctica.
2. **Entrada al tema:** preferir anclaje concreto (“En la práctica…”, “Quien mantiene un proyecto Ionic…”) antes que “La presente investigación tiene como finalidad…”.
3. **Menos meta-texto:** reducir “a continuación se presenta”, “el presente capítulo”, “dicha línea de investigación” repetido; sustituir por transiciones directas.
4. **Listas con moderación:** en objetivos o limitaciones las viñetas están bien; en introducción o justificación, preferir **párrafos** y solo listas cuando ordenen criterios o requisitos.
5. **Jurado no técnico:** donde hable de simulación de plugins o sustitutos, una frase puente basta (equivalente a *test doubles* en Node) sin perder rigor.
6. **Hipótesis y resultados:** tono prudente; “se espera”, “bajo condiciones de la metodología”, no prometer cifras sin estudio.
7. **Voz:** en pregrado suele usarse tercera persona o pasiva (“se propone”, “el trabajo se apoya en”); evitar “yo” salvo que el plantel lo permita; en “contribuciones” puede usarse “se espera aportar…”.
8. **Cohere con metodología cuantitativa:** si se afirma tipo o alcance de estudio, mantener alineación con `sampieri2023metodologia` y con el skill `tesis-metodologia-hernandez` si aplica.

## Anti-patrones (suelen marcar texto como “IA”)

- Tres adjetivos en fila: “innovador, trascendental y revolucionario”.
- Cada párrafo empieza con “Además”, “Asimismo”, “En este sentido”.
- Guiones largos (---) en cada frase; usar coma, punto o paréntesis.
- Triadas numeradas (1)(2)(3) en **todos** los párrafos; reservar para procedimientos o diseño experimental.
- Frase hecha: “en el marco de”, “robusto ecosistema”, “paradigma” sin definir.

## Al repasar una sección

1. Leer el párrafo en voz alta mentalmente: si cansa antes del punto final, partir o simplificar.
2. ¿Hay una idea principal por párrafo? Si no, dividir.
3. ¿Las citas quedan pegadas a una afirmación concreta? Mejor que citas “decorativas”.
4. Conservar **una** mención clara del alcance (unitarias en Node vs integración en dispositivo) donde haga falta honestidad metodológica.

## Relación con otros archivos del proyecto

- Plan principal: `Plantilla-de-Plan-de-Tesis-Jeam/contenido/`.
- Guía de elaboración (contenido normativo): `guia elaboracion/guia_elaboracion_tesis.tex` (título, resumen, formato, referencias APA; compilar localmente).
- Metodología Hernández: skill `tesis-metodologia-hernandez` para no contradecir alcance u objetivos.

## Mini-ejemplo de tono (no copiar literal; imitar equilibrio)

**Menos humano:** “La investigación se orienta a una línea precisa y defendible que articula dimensión paradigmática y métricas de validación.”

**Más humano:** “El trabajo concentra tres cosas que conviene no mezclar: un módulo que simule plugins en Node, una forma clara de medir cobertura, y MCP solo para automatizar comandos que ya usarías.”

---

Al aplicar el skill, **priorizar edición mínima**: solo párrafos que suenen metálicos; no reescribir capítulos enteros sin petición explícita.
