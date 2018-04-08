## 22/01/2018 : Exemple d'intéraction shiny + d3.js
## Shiny : Organisation de la page

shinyUI(pageWithSidebar(    
  headerPanel(HTML("aweSOM : Nuages de points")),

  sidebarPanel(
    p("Cliquer pour nouvelles données aléatoires"),
    actionButton("alea", "Nouvelles données"), 
    selectInput("topo", "Topologie", choices= c("hexagonale"= "hexagonal", 
                                                "rectangulaire"= "rectangular")), 
    selectInput("typgraph", "Type de graphique", 
                choices= c("Nuage de points"= "nuage", 
                           "Diagramme en batons"= "batons")), 
    sliderInput("taillegraph", "Taille du graphique", 10, 1000, 100)
  ),
  
  mainPanel(    
    includeHTML("js/lodash.min.js"),
    includeHTML("js/d3.min.js"),
    includeHTML("js/hexbin.js"),
    includeHTML("graphs_point_histo_nuage_facto.html"),
    HTML(paste0('<div id="thePlot" class=\"shiny-hist\"><svg /></div>'))
  )
))