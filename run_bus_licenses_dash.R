library(knitr)
library(rmarkdown)
library(rsconnect)

Sys.setenv(RSTUDIO_PANDOC="C:/Program Files/RStudio/resources/app/bin/quarto/bin/tools")

#https://rpubs.com/arafath/automateR
#https://www.ericeikrem.com/publishing-rpubs-command-line/
#https://rdrr.io/github/rstudio/rsconnect/man/rpubsUpload.html


# Knits rmd file (.Rmd is saved in the working directory)
knit('C:/Users/Nissim/Documents/Building Permits for Dante/west_phl_building_permits/west_phl_building_permits/dashboard_draft.Rmd')

# Creates the html output
rmarkdown::render('C:/Users/Nissim/Documents/Building Permits for Dante/west_phl_building_permits/west_phl_building_permits/dashboard_draft.Rmd')

rpubsUpload(title = "Promise Zone Building Permits Dashboard", 
            contentFile = 'C:/Users/Nissim/Documents/Building Permits for Dante/west_phl_building_permits/west_phl_building_permits/dashboard_draft.html',
            originalDoc = 'C:/Users/Nissim/Documents/Building Permits for Dante/west_phl_building_permits/west_phl_building_permits/dashboard_draft.Rmd',
            id = "https://api.rpubs.com/api/v1/document/986937/26eec7252e694da6bb0e57c2299d4297")
