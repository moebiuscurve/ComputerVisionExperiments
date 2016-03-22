% Find template 1D
pkg load image;

function index=find_template_1D(t,s)
	%TODO: Locate template t in signal s and return index
	index=-1;
	for i=1:size(s,2)-2
	  if s(i)==t(1) && s(i+1)==t(2) && s(i+2)==t(3),
	    index=i;
	    break;
	  end
	end
endfunction

s = [-1 0 0 1 1 1 0 -1 -1 0 1 0 0 -1];
t = [1 1 0];
disp('Signal:'), disp([1:size(s, 2); s]);
disp('Template:'), disp([1:size(t, 2); t]);

index=find_template_1D(t,s);
disp('Index:'),disp(index);
