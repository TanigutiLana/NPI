# Inserir endereço da pasta que contém os arquivos que você quer renomear
path = 'C:\\Users\\Nova pasta'

#Renomeia a extensão da imagem em +1
for filename in os.listdir(path):
	ext = filename.split(".")
	extf = int(ext[1])+1
	os.rename(os.path.join(path,filename), os.path.join(path,'HD1.'+str(extf).zfill(3)))
