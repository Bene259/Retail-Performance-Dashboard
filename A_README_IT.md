#  Retail Performance Dashboard

**Analisi e ottimizzazione delle performance retail**

------------------------------------------------------------------------

##  Panoramica

Questo progetto si concentra sull'**analisi e l'ottimizzazione delle
performance di un punto vendita**.\
Abbiamo integrato più dataset, li abbiamo puliti e analizzati e infine
creato una **dashboard interattiva in Power BI** per monitorare i
principali KPI, come: - Fatturato totale - Tasso di conversione -
Scontrino medio - Traffico in store - Vendite per prodotto - Performance
del personale

Inoltre, è stata utilizzata **Python** per analisi numeriche
approfondite e per realizzare una **previsione mensile** delle vendite.

------------------------------------------------------------------------

##  Struttura del progetto

**Retail_Performance_Dashboard/** - **1_Data/** - products.csv\
- staff.csv\
- sales.csv\
- customers_clean.csv\
- stock_levels.csv\
- store_traffic.csv\
- Nespresso retail dataset.xlsx - **2_SQL/** - Nespresso_retail.sql\
- README.md - **3_Python/** - Nespresso_retail.ipynb\
- README.md - **4_PowerBI/** - capstonepowerbi.pbix\
- README.md - **5_Documentation/** - Final_Project_Report.pdf\
- README.md - **A_README.md** → **Sei qui**

------------------------------------------------------------------------

##  Tecnologie utilizzate

-   **Excel** → Pulizia iniziale dei dati e calcolo KPI\
-   **MySQL** → Creazione e gestione del database per l'analisi dei
    dati\
-   **Python + NumPy/Pandas** → Analisi avanzata e previsioni\
-   **Power BI** → Visualizzazione dei dati tramite dashboard
    interattiva\
-   **GitHub** → Versionamento e condivisione del progetto

------------------------------------------------------------------------

##  Come utilizzare il progetto

### 1 Esplora la Dashboard

-   Apri il file:\
    `4_PowerBI/capstonepowerbi.pbix`
-   È necessario avere installato **Power BI Desktop**.\
-   Funzionalità disponibili:
    -   KPI principali
    -   Filtri e slicer (data, categoria, staff)
    -   Classifica prodotti e ranking del personale
    -   Tabelle dettagliate per analisi granulari

------------------------------------------------------------------------

### 2 Lavora con i Dataset

-   Tutti i dataset originali e puliti si trovano in:\
    `1_Data/`
-   Formati disponibili: **CSV** e **XLSX**.

------------------------------------------------------------------------

### 3 Configura il Database SQL

-   Usa lo script:\
    `2_SQL/Nespresso_retail.sql`
-   Crea le tabelle, importa i dati e consente di lanciare query
    personalizzate per analisi avanzate.

------------------------------------------------------------------------

### 4 Analisi e Previsioni con Python

-   Apri:\
    `3_Python/Nespresso_retail.ipynb`

-   Include:

    -   Calcolo dei KPI
    -   Aggregazione mensile
    -   **Previsione vendite di un mese in avanti**\

-   Richiede l'installazione delle librerie:

    ``` bash
    pip install pandas numpy matplotlib seaborn
    ```

------------------------------------------------------------------------

### 5 Leggi il Report del Progetto

-   Si trova in:\
    `5_Documentation/Final_Project_Report.pdf`
-   Contiene:
    -   Obiettivi
    -   Analisi KPI
    -   Insight dalla dashboard
    -   Risultati previsionali

------------------------------------------------------------------------

##  Contatti

Per qualsiasi domanda o suggerimento, puoi contattarmi tramite GitHub o
email.

------------------------------------------------------------------------

*Questo repository mostra un'analisi completa delle performance retail,
dall'integrazione dei dati alla previsione delle vendite.*
