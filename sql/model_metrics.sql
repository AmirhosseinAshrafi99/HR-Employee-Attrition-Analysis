DROP TABLE IF EXISTS model_metrics;

CREATE TABLE model_metrics (

Model TEXT,

Accuracy REAL,

Precision REAL,

Recall REAL,

F1 REAL,

ROC_AUC REAL

);

INSERT INTO model_metrics VALUES
('Logistic Regression',0.864,1.000,0.149,0.259,0.574);

INSERT INTO model_metrics VALUES
('Logistic Regression (One-Hot)',0.881,0.875,0.298,0.444,0.645);

INSERT INTO model_metrics VALUES
('Logistic Regression (Balanced)',0.731,0.337,0.702,0.455,0.719);

INSERT INTO model_metrics VALUES
('Decision Tree',0.837,0.471,0.170,0.250,0.567);

INSERT INTO model_metrics VALUES
('Random Forest',0.833,0.400,0.085,0.140,0.530);

SELECT *
FROM model_metrics
ORDER BY ROC_AUC DESC;