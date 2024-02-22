# Copy files to github io

githubdir = "C:/Github/"
githubdir = "C:/Users/tcarruth/Documents/Github/"
frompath = paste0(githubdir,"CDFW_Bag_Limits")
frompathG = "G:/Shared drives/BM shared/1. Projects/CDFW_halibut_bag_limits"
topath = paste0(githubdir,"CDFW_Bag_Limits_IO/docs") 

copyall = function(thisdir, todir){
  fromfiles = list.files(thisdir,include.dirs = F)
  for(j in 1:length(fromfiles))  file.copy(paste0(thisdir,fromfiles[j]), paste0(todir,fromfiles[j]),overwrite=T)
}  
  
copyall(paste0(frompathG,"/References/"), paste0(topath,"/References/"))
copyall(thisdir=paste0(frompath,"/Figures/Data/"),todir= paste0(topath,"/Figures/"))
copyall(thisdir=paste0(frompath,"/Figures/Demo/"),todir= paste0(topath,"/Figures/"))
copyall(thisdir=paste0(frompath,"/Code/"),todir= paste0(topath,"/Code/"))


file.copy(paste0(frompathG,"/Status Assumptions To Do.xlsx"),paste0(topath,"/Project_Info/Status Assumptions To Do.xlsx"),overwrite=T)

#file.copy(paste0(frompath,"/OMs/DemoOM2.rda"),paste0(topath,"/OMs/DemoOM2.rda"),overwrite=T)


