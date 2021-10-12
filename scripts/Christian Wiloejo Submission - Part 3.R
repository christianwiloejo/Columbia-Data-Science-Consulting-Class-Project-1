render_report <- function(report_month, views_file_name, transactions_file_name) {

  template <- "../scipts/Christian Wiloejo Submission - Part 2.Rmd"
  dir.create(sprintf('../report_output/Month %s Report', report_month))
  out_file <- sprintf("../report_output/Month %s report/Report for Month %s", report_month, report_month)
  
  parameters <- list(report_month = report_month,
                     views_file_path = views_file_name,
                     transactions_file_path = transactions_file_name)
  
  rmarkdown::render(template,
                    output_file = out_file,
                    params = parameters,
                    envir = new.env())
  invisible(TRUE)
}

render_report(1, 'views -- January 2020.csv', 'transactions -- January 2020.csv')
render_report(2, 'views -- February 2020.csv', 'transactions -- February 2020.csv')

