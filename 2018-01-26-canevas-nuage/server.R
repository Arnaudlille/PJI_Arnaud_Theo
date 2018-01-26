## 22/01/2018 : Exemple d'intéraction shiny + d3.js
## Shiny : script serveur

shinyServer(function(input, output) {
  
  ## Passer les données au graphique d3
  output$thePlot <- reactive({ 
    sizeInfo <- 100
    gridInfo <- list(nbLines=4,nbColumns=4,topology='hexagonal')
    superclass <- list(1,1,1,2,2,1,3,1,1,2,2,3,1,2,1,2)
    superclassColor <- list('#FF4444','#FFE144','#FF8B17')
    
    nbBatons <- 5
    isHist <- FALSE
    label <- list('baton1','baton2','baton3','baton4','baton5')
    labelColor <- list('#6DA8FF','#284166','#1E58AE','#0C6EFF','#0C6EFF')
    batonNormalizedValues <- batonNorm()
    batonRealValues <- batonReal()
    
    list(
      # Sorties communes à tous les graphiques
      sizeInfo=sizeInfo, 
      gridInfo=gridInfo, 
      superclass=superclass, 
      superclassColor=superclassColor,
      # Sortie spécifique au nuage de points
      nuageData=nuageDat(),
      # Sorties spécifiques au bâtons (à supprimer)
      nbBatons=nbBatons,
      isHist=isHist, 
      label=label, 
      labelColor=labelColor, 
      batonNormalizedValues=batonNormalizedValues, 
      batonRealValues=batonRealValues)
  })

  ## Génération des données aléatoires
  nuageDat <- reactive({
    input$alea
    res <- data.frame(cell= sample(1:16, 160, replace = T), 
                      x= rnorm(160, mean= 1), 
                      y= rnorm(160, mean= 1), 
                      label= paste(1:160))
    res
  })
  
  daSeed <- reactive({
    input$alea
    sample(1e6, 1)
  })
  batonReal <- reactive({
    set.seed(daSeed())
    lapply(1:16, function(x) as.list(100 * runif(4, 0, 1)))
  })
  batonNorm <- reactive({
    set.seed(daSeed())
    lapply(1:16, function(x) as.list(runif(4, 0, 1)))
  })
  
})
