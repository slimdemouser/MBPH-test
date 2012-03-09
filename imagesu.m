function h = imagesu(image_matrix, image_name)
% FUNCTION imagesu(image_matrix, image_name)
% 
% imagesu() is the same as imagesc except it opens a new window everytime you call it
% arguments
%	image_matrix	the matrix that gets passed to imagesc
%	imageName		a string that will show up in the figure title and window title
%
%	Tim Lin 2012 timtylin@gmail.com
%	all rights reserved blah
%   C2012
	
	if not(exist('image_name','var'))
	    h = figure();
	else
	    h = figure('Name', image_name);
	end
    colormap(gray);
    imagesc(real(image_matrix))
	if not(exist('image_name','var'))
		title(image_name)
	end
	daspect([1 1 1])
	daspect(['manual'])
	return h
end
