## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  echo = TRUE,
  comment = "#>"
)

## ----eval=FALSE---------------------------------------------------------------
#  if (!requireNamespace("devtools", quietly = TRUE)) {
#    install.packages("devtools")
#  }
#  devtools::install_github("likelet/VSOLassoBag")

## ----echo=FALSE, comment=''---------------------------------------------------
  library(VSOLassoBag)
  data(ExpressionData)
  SummarizedExperiment::assay(ExpressionData)[1:6, 1:6]

## ----echo=FALSE, comment=''---------------------------------------------------
  library(VSOLassoBag)
  data(ExpressionData)
  SummarizedExperiment::colData(ExpressionData)$`y`[1:6]
  

## ----eval=FALSE---------------------------------------------------------------
#    library(VSOLassoBag)
#    data(ExpressionData)
#    set.seed(19084)
#    VSOLassoBag(ExpressionData = ExpressionData, outcomevariable = "y", bootN = 100, a.family = "gaussian", bagFreq.sigMethod = "PST", do.plot = FALSE)

## ----echo=FALSE, comment=''---------------------------------------------------
  library(VSOLassoBag)
  data(ExpressionData)
  set.seed(19084)
  PSTResults<-VSOLassoBag(ExpressionData = ExpressionData, outcomevariable = "y", bootN = 100, a.family = "gaussian", bagFreq.sigMethod = "PST", do.plot = FALSE)
  print(PSTResults$results[1:14, ])

## ----eval=FALSE---------------------------------------------------------------
#    library(VSOLassoBag)
#    data(ExpressionData)
#    set.seed(19084)
#    VSOLassoBag(ExpressionData = ExpressionData, outcomevariable = "y", bootN = 100, a.family = "gaussian", bagFreq.sigMethod = "CEP", do.plot = TRUE)

## ----echo=FALSE, comment=''---------------------------------------------------
  library(VSOLassoBag)
  data(ExpressionData)
  set.seed(19084)
  CEPResults<-VSOLassoBag(ExpressionData = ExpressionData, outcomevariable = "y", bootN = 100, a.family = "gaussian", bagFreq.sigMethod = "CEP", do.plot = FALSE)
  print(CEPResults$results[1:14, ])

## ----echo=FALSE, comment=''---------------------------------------------------
  sessionInfo()

