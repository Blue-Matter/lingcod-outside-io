# Copy files to github io

githubdir = "C:/Github/"
#githubdir = "C:/Users/tcarruth/Documents/Github/"
frompath = paste0(githubdir,"lingcod-outside")
frompathG = "G:/Shared drives/BM shared/1. Projects/DFO_Lingcod"
topath = paste0(githubdir,"lingcod-outside-io/docs") 

copyall = function(thisdir, todir){
  fromfiles = list.files(thisdir,include.dirs = F)
  for(j in 1:length(fromfiles))  file.copy(paste0(thisdir,fromfiles[j]), paste0(todir,fromfiles[j]),overwrite=T)
}  

  
#copyall(paste0(frompathG,"/References/"), paste0(topath,"/References/"))
#copyall(thisdir=paste0(frompath,"/Figures/Data/"),todir= paste0(topath,"/Figures/"))
#copyall(thisdir=paste0(frompath,"/Figures/Demo/"),todir= paste0(topath,"/Figures/"))
#copyall(thisdir=paste0(frompath,"/Code/"),todir= paste0(topath,"/Code/"))

copyall(thisdir = paste0(frompath,"/assessment/runs/straw_dog/plots/"),todir = paste0(topath,"/Assessments/Straw_dog/"))
file.copy(paste0(frompathG,"/Presentations/Tech Meeting 1 Feb 2024 v3.pdf"),paste0(topath,"/Presentations/Tech Meeting 1 Feb 2024 v3.pdf"),overwrite=T)

#file.copy(paste0(frompath,"/OMs/DemoOM2.rda"),paste0(topath,"/OMs/DemoOM2.rda"),overwrite=T)


