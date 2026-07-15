# 🏢 Sistema de Gestión de Consultoría de Software (SQL Server)

Proyecto enfocado en el diseño, desarrollo e implementación de una base de datos transaccional (**OLTP**) en **Microsoft SQL Server** para la administración de clientes,
empleados, asignación de proyectos y control financiero de una empresa dedicada al desarrollo y consultoría de bases de datos.
El proyecto aplica principios de modelado relacional, normalización, integridad referencial y optimización de consultas utilizando herramientas nativas de SQL Server.

---

## 🛠 Tecnologías Utilizadas

`Microsoft SQL Server` • `Transact-SQL (T-SQL)` • `SQL Server Management Studio (SSMS)` • `Execution Plans` • `Query Optimization`

---

## 💼 Competencias Demostradas

<details>
<summary><b>🔍 Hacer clic para expandir las habilidades técnicas implementadas</b></summary>

### Diseño y Modelado
- Modelado Entidad–Relación (MER)
- Normalización (1FN, 2FN y 3FN)
- Integridad Referencial (`Primary Keys`, `Foreign Keys`, `Constraints`)

### Desarrollo en T-SQL
- Consultas avanzadas (`INNER JOIN`, `LEFT JOIN`, `SELF JOIN`)
- Filtrados y Agrupaciones (`GROUP BY`, Funciones de agregación)
- Automatización mediante **Triggers Transaccionales**

### Optimización y Rendimiento
- Indexación avanzada (`Nonclustered Indexes`, `Covering Indexes / INCLUDE`)
- Diagnóstico con Planes de Ejecución Reales (`Execution Plans`)

</details>

---

## 🗄 Modelo de Base de Datos

La solución está compuesta por ocho entidades normalizadas y categorizadas según su propósito en el sistema:

| Catálogos | Operación | Registro Histórico |
| :--- | :--- | :--- |
| • `PROFESION`<br>• `DEPARTAMENTO`<br>• `ESTADO_PROYECTO`<br>• `TARIFA` | • `EMPRESA_CLIENTE`<br>• `EMPLEADO`<br>• `PROYECTO` | • `DETALLE_PROYECTO` *(Registro operativo de horas trabajadas y costos históricos)* |

---

## ⭐ Funcionalidades Clave e Integridad de Datos

### 👥 Jerarquía Organizacional
La tabla **EMPLEADO** implementa una relación autorreferencial mediante la columna `ID_JEFE`, permitiendo representar la estructura jerárquica de la organización y resolver el 
organigrama completo mediante consultas **SELF JOIN**, sin necesidad de tablas adicionales.

### 💰 Conservación del Costo Histórico
> [!NOTE]
> **Trigger:** `TRG_REGISTRAR_COSTO_HISTORICO_DETALLE`
> 
> Al insertar un registro en `DETALLE_PROYECTO`, el trigger obtiene automáticamente la tarifa vigente desde la tabla `TARIFA` y almacena dicho valor en `COSTO_HORA`. 
Esta estrategia garantiza que futuras modificaciones en las tarifas de los empleados no alteren el historial financiero de los proyectos previamente registrados y cerrados.

### ✅ Validación de Reglas de Negocio
> [!WARNING]
> **Trigger:** `TRG_VALIDAR_HORAS_TRABAJADAS`
> 
> Impide registrar horas trabajadas menores o iguales a cero utilizando la instrucción **THROW**, cancelando la transacción de inmediato y preservando la consistencia de la 
información almacenada.

---

## 📊 Vistas

Las consultas complejas y repetitivas fueron encapsuladas mediante **Views** para simplificar la generación de reportes y alimentar herramientas de BI:

* **`VW_CONSOLIDADOPROYECTOS`**: Consolida la información operativa mostrando cliente, estado actual, fecha de inicio, total de horas trabajadas y el costo total acumulado.
* **`VW_ORGANIGRAMAEMPLEADOS`**: Presenta la estructura organizacional de la empresa cruzando al colaborador, su profesión y departamento junto a su jefe directo.
* **`VW_RESUMENFINANCIEROCLIENTES`**: Resume de manera gerencial la actividad de cada cliente indicando cantidad de proyectos activos, horas invertidas e inversión total acumulada.

---

## 📈 Análisis de Planes de Ejecución (Antes vs Después)

Para evaluar el impacto de la estrategia de indexación, se analizaron los **Execution Plans** reales utilizando la siguiente consulta de agregación de costos:

```sql
SELECT
    ID_PROYECTO,
    SUM(HORAS_TRABAJADAS * COSTO_HORA) AS COSTO_TOTAL
FROM DETALLE_PROYECTO
WHERE ID_PROYECTO = 5
GROUP BY ID_PROYECTO; 
```

❌ 1. Antes de la Indexación (Clustered Index Scan)
Sin un índice secundario optimizado, el motor realizaba una lectura secuencial completa de la tabla física en disco (Scan) con un costo relativo del 99%. Esto forzaba a SQL Server
a procesar miles de filas innecesarias en memoria para buscar un solo proyecto.

2. Después de la Indexación (Nonclustered Index Seek)
Se implementó un índice de cobertura (Covering Index) estructurado con la cláusula INCLUDE para almacenar las métricas de cálculo dentro de las hojas del índice:


```sql
CREATE NONCLUSTERED INDEX IDX_DETALLE_PROYECTO
ON DETALLE_PROYECTO (ID_PROYECTO)
INCLUDE (HORAS_TRABAJADAS, COSTO_HORA);
```

Tras la optimización, el motor detectó la estructura y cambió su estrategia a una búsqueda directa (Seek), procesando la consulta en milisegundos directamente en memoria
y evitando lecturas costosas a la tabla base (Key Lookups).

🖼️ Modelo Entidad–Relación
A continuación se detalla el diagrama relacional físico del proyecto generado desde el motor de SQL Server:

📂 Organización y Despliegue del Proyecto
Plaintext
```Text
DB_EMPRESA_SOFTWARE/
├── database/
│   ├── 01_Create_Database.sql
│   ├── 02_Create_Table.sql
│   ├── 03_Inserts.sql
│   ├── 04_Views.sql
│   ├── 05_Triggers.sql
│   └── 06_Indexes.sql
├── docs/
│   ├── Clustered_Index_Scan.png
│   ├── Modelo_Relacional.png
│   └── NonClustered_Index_Seek.png
└── README.md
``` 

🚀 Instrucciones de Ejecución
Para desplegar la solución de forma correcta, ejecute los scripts dentro de SQL Server Management Studio (SSMS) ingresando a la carpeta database y siguiendo estrictamente 
este orden correlativo:

01_Create_Database.sql
02_Create_Table.sql
03_Inserts.sql
04_Views.sql
05_Triggers.sql
06_Indexes.sql

📄 Licencia
Proyecto desarrollado exclusivamente con fines académicos, demostrativos y de aprendizaje.
