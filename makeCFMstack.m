%Author: Naufer Nusran. 2019/10/03

close all, clear all, clc;

keyword="Zoomfractal";
searchfiles=strcat("*",keyword,"*_fwd.txt");
filenames=ls(searchfiles)

numImgs=7;
im=cell(numImgs,1);
for i=1:numImgs
flnm=filenames(i,:); 
im{i} = load(flnm);
M(:,:,i) = im{i};
end

hs = slice(M,[],[],1:7) ;
colormap(hot)
shading interp
set(hs,'FaceAlpha',1);
