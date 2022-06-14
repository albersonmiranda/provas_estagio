candidatos = readxl::read_excel("candidatos/candidatos.xlsx")
prova = 2022

render_one = function(prova, candidato) {
  rmarkdown::render(
    paste0(prova, ".Rmd"),
    output_file = paste0("provas/", candidato, ".pdf"),
    params = list(
        candidato = candidato),
    envir = parent.frame()
  )
}

for (candidato in candidatos$nome) {
  render_one(prova, candidato)
}
