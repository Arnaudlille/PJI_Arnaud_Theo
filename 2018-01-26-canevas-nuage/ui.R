## 22/01/2018 : Exemple d'intéraction shiny + d3.js
## Shiny : Organisation de la page

shinyUI(pageWithSidebar(    
  headerPanel(HTML("aweSOM : Nuages de points")),

  sidebarPanel(
    p("Cliquer pour nouvelles données aléatoires"),
    actionButton("alea", "Nouvelles données")
  ),
  
  mainPanel(    
    includeHTML("js/lodash.min.js"),
    includeHTML("js/d3.min.js"),
    includeHTML("js/hexbin.js"),
    includeHTML("graphs.html"),
    HTML(paste0('<div id="thePlot" class=\"shiny-hist\"><svg /></div>'))
  )
))