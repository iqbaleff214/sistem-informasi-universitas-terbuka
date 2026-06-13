# ============================================================
# TUGAS 3 TUTORIAL ONLINE
# Aplikasi Visualisasi Data Cuaca Interaktif (Shiny)
# ============================================================
 
# Set mirror CRAN supaya bisa dijalankan via Rscript
options(repos = c(CRAN = "https://cloud.r-project.org"))
 
# Pasang paket hanya jika belum ada
pkgs <- c("shiny", "ggplot2", "DT", "readxl")
for (p in pkgs) {
  if (!requireNamespace(p, quietly = TRUE)) install.packages(p)
}
 
library(shiny)
library(ggplot2)
library(DT)
library(readxl)
 
# ---- Muat data ----
data <- read_excel("Data_set_Tugas_tutorial_3_STSI_4204.xlsx", na = c("", "NA", "N/A"))
data <- as.data.frame(data)

# Paksa konversi kolom yang seharusnya numerik
num_cols <- c("MinTemp", "MaxTemp", "Rainfall", "Evaporation", "Sunshine",
              "WindGustSpeed", "WindSpeed9am", "WindSpeed3pm",
              "Humidity9am", "Humidity3pm", "Pressure9am", "Pressure3pm",
              "Cloud9am", "Cloud3pm", "Temp9am", "Temp3pm", "RISK_MM")
for (c in num_cols) {
  if (c %in% names(data)) data[[c]] <- as.numeric(data[[c]])
}

var_numeric <- names(data)[sapply(data, is.numeric)]
var_all     <- names(data)
 
# ============================================================
# UI
# ============================================================
ui <- fluidPage(
  titlePanel("Aplikasi Visualisasi Data Cuaca Interaktif"),
  sidebarLayout(
    sidebarPanel(
      selectInput("plot_type", "Pilih Jenis Plot:",
                  choices = c("Scatter Plot" = "scatter",
                              "Line Plot"    = "line",
                              "Bar Plot"     = "bar",
                              "Tabel Data"   = "table")),
 
      # Scatter plot butuh dua variabel numerik (X dan Y)
      conditionalPanel(
        condition = "input.plot_type == 'scatter'",
        selectInput("x_var", "Variabel X:",
                    choices = var_numeric, selected = "MinTemp"),
        selectInput("y_var", "Variabel Y:",
                    choices = var_numeric, selected = "MaxTemp")
      ),
 
      # Line dan bar plot butuh satu variabel
      conditionalPanel(
        condition = "input.plot_type == 'line' || input.plot_type == 'bar'",
        selectInput("var", "Pilih Variabel:",
                    choices = var_all, selected = "MaxTemp")
      )
    ),
 
    mainPanel(
      conditionalPanel(condition = "input.plot_type != 'table'",
                       plotOutput("plot", height = "500px")),
      conditionalPanel(condition = "input.plot_type == 'table'",
                       DTOutput("table"))
    )
  )
)
 
# ============================================================
# Server
# ============================================================
server <- function(input, output, session) {
 
  output$plot <- renderPlot({
    if (input$plot_type == "scatter") {
      ggplot(data, aes_string(x = input$x_var, y = input$y_var)) +
        geom_point(color = "#428BCA", alpha = 0.6) +
        labs(title = paste(input$y_var, "vs", input$x_var),
             x = input$x_var, y = input$y_var) +
        theme_minimal()
 
    } else if (input$plot_type == "line") {
      df <- data.frame(idx = seq_len(nrow(data)),
                       val = data[[input$var]])
      ggplot(df, aes(x = idx, y = val)) +
        geom_line(color = "#2E5395") +
        labs(title = paste("Line Plot -", input$var),
             x = "Hari ke-", y = input$var) +
        theme_minimal()
 
    } else if (input$plot_type == "bar") {
      var_data <- data[[input$var]]
      if (is.numeric(var_data)) {
        ggplot(data.frame(val = var_data), aes(x = val)) +
          geom_histogram(fill = "#428BCA", color = "white", bins = 20) +
          labs(title = paste("Bar Plot (histogram) -", input$var),
               x = input$var, y = "Frekuensi") +
          theme_minimal()
      } else {
        ggplot(data.frame(val = factor(var_data)), aes(x = val)) +
          geom_bar(fill = "#428BCA") +
          labs(title = paste("Bar Plot -", input$var),
               x = input$var, y = "Frekuensi") +
          theme_minimal()
      }
    }
  })
 
  output$table <- renderDT({
    datatable(data,
              options = list(scrollX = TRUE, pageLength = 10),
              rownames = FALSE)
  })
}
 
# ============================================================
# Jalankan aplikasi
# ============================================================
shinyApp(ui = ui, server = server)
