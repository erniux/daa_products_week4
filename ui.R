shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Diabetes prediction"),
    sidebarPanel(
      h3('Select a value with the up/down arrows:'),
      numericInput('glucose', 'Glucose mg/dl', 90, min = 50, max = 200, step = 5 ),
      h3('click on the button SUBMIT to see the calculations!'),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('You entered'),
      verbatimTextOutput("inputValue"),
      h4('Which resulted in a prediction of '),
      verbatimTextOutput("prediction")
    )
  )
)