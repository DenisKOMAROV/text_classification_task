# text_classification_task


model, input preprocessed data, output predictions:

[gdrive](https://drive.google.com/drive/folders/1CzaS1CY4axUER9boapae1Y-cyH-U32si?usp=share_link)

**output predict csv path: data/output/rubert-tiny2_v3_tag_1668632322_predict.csv**

## This repo contains:

  EDA notebook 
  Model train and inference notebook
  
### Before running:

  EDA summary is in `output/EDA/Sber interview task.pdf`
  
  the document contains all nessesary info about EDA, experiment logic, metrics and model selection.
  
  
### Steps to run:
  1 Clone this repo and download data from gdrive
  
  2 Check `docker-compose.yml` and select available port for notebook
  
  3 Run `docker-compose up --build`
  
  4 Open jupyter lab
  
#### EDA notebook contains 
  info about data
  
  data preprocessing
  
  naive baseline

#### sber_text_analysis notebook contains
  model train code
  
  model test code
  
  
