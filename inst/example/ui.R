library(shiny)
library(shinyFiles)

shinyUI(pageWithSidebar(
  headerPanel(
    "Selections with shinyFiles"
    # ,
    # "shinyFiles example"
  ),
  sidebarPanel(
   
    shinyFilesButton("file", "File select", "Please select a file", multiple = TRUE, viewtype = "detail"),
  
    tags$hr(),
    shinyDirButton("directory", "Folder select", "Please select a folder"),
  
    tags$hr(),
    shinySaveButton("save", "Save file", "Save file as...", filetype = list(text = "txt", picture = c("jpeg", "jpg")), viewtype = "icon")
  ),
  mainPanel(
    tags$h4("The output of a file selection"),
    verbatimTextOutput("filepaths"),
    tags$hr(),
    tags$h4("The output of a folder selection"),
    verbatimTextOutput("directorypath"),
    tags$hr(),
    tags$h4("The output of a file save"),
    verbatimTextOutput("savefile")
  )
))
